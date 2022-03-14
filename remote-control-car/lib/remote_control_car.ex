defmodule RemoteControlCar do
  defstruct battery_percentage: 100,
            distance_driven_in_meters: 0,
            nickname: "none"

  def new(), do: %RemoteControlCar{}

  def new(nickname), do: %RemoteControlCar{nickname: nickname}

  def display_distance(remote_car), do: "#{remote_car.distance_driven_in_meters} meters"

  def display_battery(remote_car) when remote_car.battery_percentage == 0, do: "Battery empty"

  def display_battery(remote_car), do: "Battery at #{remote_car.battery_percentage}%"

  def drive(remote_car) do
    # Please implement the drive/1 function
  end
end
