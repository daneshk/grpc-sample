import ballerina/grpc;
import ballerina/io;

PurchaseBlockingClient pc = new ("http://localhost:50051");

public function main (string... args) {

    PurchaseRequest pr = {
        poNumber: "001",
        lineItem: "Hello",
        quantity: 0,
        date: {
            year: 2018,
            month: 12,
            day: 5
        },
        customerNumber: "001",
        paymentReference: "NA"
    };

    io:print("s");
    var response = pc->purchase(pr, headers = ());
    io:print("f");

}
