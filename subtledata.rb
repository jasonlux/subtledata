
#models = File.join(File.dirname(__FILE__), '..', 'models', '*.rb')
#Dir[models].each {|file| require file }

require 'general_api'
require 'locations_api'
require 'monkey'
require 'swagger'
require 'users_api'
require 'concessions_api'

require 'subtledata/authresponse'
require 'subtledata/authuserrequest'
require 'subtledata/availablemodifier'
require 'subtledata/card'
require 'subtledata/cardpayment'
require 'subtledata/cardstatus'
require 'subtledata/category'
require 'subtledata/categoryimage'
require 'subtledata/concessionorderresults'
require 'subtledata/concessionticketdetails'
require 'subtledata/connecteduser'
require 'subtledata/connectstatus'
require 'subtledata/country'
require 'subtledata/deleteuserstatus'
require 'subtledata/discountinfo'
require 'subtledata/discounttype'
require 'subtledata/employee'
require 'subtledata/externalpayment'
require 'subtledata/externalpaymentstatus'
require 'subtledata/item'
require 'subtledata/itemimage'
require 'subtledata/itemmodifier'
require 'subtledata/itemtoadd'
require 'subtledata/local'
require 'subtledata/location'
require 'subtledata/mapped'
require 'subtledata/menuitem'
require 'subtledata/menuitemdetail'
require 'subtledata/modifier'
require 'subtledata/modifierlist'
require 'subtledata/modifiertype'
require 'subtledata/newcard'
require 'subtledata/newconnection'
require 'subtledata/newexternalpayment'
require 'subtledata/newpayment'
require 'subtledata/newticket'
require 'subtledata/newuser'
require 'subtledata/newuserdetails'
require 'subtledata/openticket'
require 'subtledata/orderresults'
require 'subtledata/payment'
require 'subtledata/paymentstatus'
require 'subtledata/preauthcard'
require 'subtledata/preauthpayment'
require 'subtledata/revenuecenter'
require 'subtledata/state'
require 'subtledata/status'
require 'subtledata/tab'
require 'subtledata/tabledetails'
require 'subtledata/tableminimal'
require 'subtledata/tendertype'
require 'subtledata/terminal'
require 'subtledata/ticket'
require 'subtledata/ticketstatus'
require 'subtledata/user'

Swagger.configure do |config|
    config.format = 'json'
    config.scheme = 'https'
    config.host = 'api.subtledata.com'
    config.base_path = '/v1'
    config.inject_format = false
end

module SubtleData
    module Standard
        Locations = ::Locations_api
        Users = ::Users_api
        General = ::General_api
    end
end

