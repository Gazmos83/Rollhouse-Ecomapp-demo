class CommentsController < ApplicationController
  def create
    @product = Product.find(params[:product_id])
    @comment = @product.comments.new(comment_params)
    @comment.user = current_user
    @comment.save
    redirect_to product_path(@product)
  end

  def destroy
    @comment = Comment.find(params[:id])
    @product = @comment.product
    @comment.destroy

    respond_to do |format|
      format.html { redirect_to @product, notice: 'Comment was successfully destroyed.' }
      format.json { head :no_content }
  end
end

  private
	def comment_params
		params.require(:comment).permit(:user_id, :body, :rating)
	end
end
