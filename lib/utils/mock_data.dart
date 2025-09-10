import 'package:cleopatra/data/models/service_models.dart';

class MockData {
  static List<ServiceModel> services = [
    ServiceModel(
        name: "Bedroom", type: "Standard", price: 17.25, duration: "30 mins"),
    ServiceModel(
        name: "Bedroom", type: "Deep", price: 23.50, duration: "45 mins"),
    ServiceModel(
        name: "Bathroom", type: "Standard", price: 21.00, duration: "40 mins"),
    ServiceModel(
        name: "Bathroom", type: "Deep", price: 38.50, duration: "60 mins"),
    ServiceModel(
        name: "Half Bathroom",
        type: "Standard",
        price: 10.50,
        duration: "20 mins"),
    ServiceModel(
        name: "Half Bathroom", type: "Deep", price: 17.00, duration: "30 mins"),
    ServiceModel(
        name: "Other Room",
        type: "Standard",
        price: 26.00,
        duration: "35 mins"),
    ServiceModel(
        name: "Other Room", type: "Deep", price: 38.50, duration: "55 mins"),
    ServiceModel(
        name: "Refrigerator (inside)",
        type: "Add-On",
        price: 17.00,
        duration: "15 mins"),
    ServiceModel(
        name: "Microwave (inside)",
        type: "Add-On",
        price: 4.25,
        duration: "10 mins"),
    ServiceModel(
        name: "Oven (inside)",
        type: "Add-On",
        price: 19.25,
        duration: "25 mins"),
    ServiceModel(
        name: "Stovetop (scrub)",
        type: "Add-On",
        price: 8.50,
        duration: "15 mins"),
    ServiceModel(
        name: "Dishwasher (inside)",
        type: "Add-On",
        price: 6.50,
        duration: "15 mins"),
    ServiceModel(
        name: "Toaster (crumbs)",
        type: "Add-On",
        price: 2.25,
        duration: "10 mins"),
    ServiceModel(
        name: "Coffee Maker (descale)",
        type: "Add-On",
        price: 2.25,
        duration: "10 mins"),
    ServiceModel(
        name: "Blender (inside)",
        type: "Add-On",
        price: 2.25,
        duration: "10 mins"),
    ServiceModel(
        name: "Washer (inside)",
        type: "Add-On",
        price: 6.50,
        duration: "15 mins"),
    ServiceModel(
        name: "Dryer (inside)",
        type: "Add-On",
        price: 6.50,
        duration: "15 mins"),
    ServiceModel(
        name: "Air Fryer (inside)",
        type: "Add-On",
        price: 6.50,
        duration: "15 mins"),
  ];
}
