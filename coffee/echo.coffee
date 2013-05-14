class EchoViewModel
    constructor: (text="") ->
        @message = ko.observable(text)
        @errorMessage = ko.computed =>
            if @message().length is 0 then "Empty!" else ""