import React from "react";

import Linechart from "./linechart.js";
import Piechart from "./piechart.js";
import Areachart from "./areachart.js";
export default class HomeNerdlet extends React.Component {
  render() {
    return (
      <div>
        <h2>Line Chart</h2>
        <Linechart />
        <h2>Pie chart</h2>
        <Piechart />
        <h2>Area Chart</h2>
        <Areachart />
      </div>
    );
  }
}
