class Address
    constructor: (@firstName, @lastName) ->
        @fullName = "#{@firstName} #{@lastName}"

class AddressBookViewModel
    constructor: () ->
        @addressList = ko.observableArray()
        @firstNameValue = ko.observable("")
        @lastNameValue = ko.observable("")

    addAddress: (address, e) =>
        console.log "addAddress #{@firstNameValue()} : #{@lastNameValue()}"
        if @firstNameValue().length is 0 or @lastNameValue().length is 0
            return

        @addressList.unshift(new Address(@firstNameValue(), @lastNameValue()))
        @firstNameValue("")
        @lastNameValue("")

    removeAddress: (address, e) =>
        console.log "removeAddress #{address.firstName} : #{address.lastName}"
        @addressList.remove(address)