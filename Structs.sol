// SPDX-License-Identifier: MIT
pragma solidity 0.8.26;

contract Structs {
    struct Car {
        string model;
        uint year;
        address owner;
    }

    Car public car;
    Car[] public cars;
    mapping(address => Car[]) public carsByeOwner;

    function examples() external {
        Car memory toyota = Car("Toyata", 1983, msg.sender);
        Car memory lambo = Car({year: 1980, model: "Lamboghini", owner: msg.sender});
        Car memory tesla;
        tesla.model = "Tesla";
        tesla.year = 2010;
        tesla.owner = msg.sender;

        cars.push(toyota);
        cars.push(lambo);
        cars.push(tesla);

        cars.push(Car("Ferrari", 2020, msg.sender));
        carsByeOwner[msg.sender].push(Car("Audi", 2020, msg.sender));

        Car storage _car = cars[0];
        _car.year = 1990;
        delete _car.owner;
        delete cars[1];
    }
}