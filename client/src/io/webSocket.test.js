import inject from '../common/framework/inject';
import fakeIoModule from '../_test/fakeIo';
import webSocketModule from './webSocket';


describe("webSocket", function () {

    var socket;
    var socketURI = 'http://localhost:8080/';
    var io;

    beforeEach(function () {
        io = fakeIoModule();
        socket = webSocketModule(inject({io, socketURI}));
    });

    describe("initialization", function () {
        beforeEach(function () {
            // Setup for this case
        });

        it('should connect to socket', function () {
            expect(io._connectedTo).toBe(socketURI);
        });
    });


});