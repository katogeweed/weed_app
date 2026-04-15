class WelcomeController < ApplicationController
  def index
    # @をつけることでViewファイルでも見ることが可能なる
    @memos = Memo.all
  end

  def create
    @memo = Memo.new(memo_params)
    if @memo.save
      redirect_to "/welcome/index"
    end
  end

end



private

def memo_params
  params.expect(memo: [:title, :content])
end