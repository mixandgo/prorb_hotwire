import { Controller } from "@hotwired/stimulus";

// Connects to data-controller="test"
export default class extends Controller {
  static targets = ["text"];
  static classes = ["myelement"];
  static values = { name: String, age: { type: Number, default: 18 } };

  connect() {
    console.log("Connected! YEY!");
    console.log(
      "Classes: ",
      this.myelementClass,
      this.myelementClasses,
      this.hasMyelementClass
    );
    console.log("Values: ", this.nameValue, this.ageValue);
    this.nameValue = "Boris";
  }

  nameValueChanged(current, previous) {
    console.log("Name current: ", current);
    console.log("Name previous: ", previous);
  }

  hello() {
    console.log("Button clicked!");
    console.log("You typed: " + this.textTarget.value);
  }

  textTargetConnected() {
    console.log("text connected...");
  }

  textTargetDisconnected() {
    console.log("text disconnected...");
  }
}
