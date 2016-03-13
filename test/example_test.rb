require_relative 'helper'

Protest.describe 'AClass' do
  setup do
    @driver = Driver.new App
  end

  context 'local' do
    setup do
      @value = false
    end

    test 'access to variables' do
      @driver.get '/'

      assert_equal 200, @driver.last_response.status
      deny @value
    end
  end
end
