/*
  The simplest possible test code for a serial GPS. Just verifies that 
  you are receiving data -- no NMEA processing is done.
  
  In this case, I am using an LS20031 GPS receiver connected to Serial2
  on an Arduino Mega.
  
  Created by Myles Grant <myles@mylesgrant.com>
  See also: https://github.com/grantmd/QuadCopter
  
  This program is free software: you can redistribute it and/or modify 
  it under the terms of the GNU General Public License as published by 
  the Free Software Foundation, either version 3 of the License, or 
  (at your option) any later version. 

  This program is distributed in the hope that it will be useful, 
  but WITHOUT ANY WARRANTY; without even the implied warranty of 
  MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE. See the 
  GNU General Public License for more details. 

  You should have received a copy of the GNU General Public License 
  along with this program. If not, see <http://www.gnu.org/licenses/>. 
*/

void setup() {
  Serial.begin(115200); // To your computron
  Serial2.begin(57600); // To your GPS
}

void loop() {
  if (Serial2.available()) {
    Serial.print(Serial2.read(), BYTE);
  }
}
