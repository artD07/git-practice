class PostImagesController < ApplicationController

  def new
    @post_image = PpstImages
  end

  def destroy
    post_image = 削除するPostImageレコードを取得
    post_image.削除
    redirect_to PostImageの一覧ページへのパス
  end
end