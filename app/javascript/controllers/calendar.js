
// Import the Controller class from Stimulus
// Function to generate the HTML for the current calendar month
  // function generateCalendar() {
  //   // Get the current date
  //   const currentDate = new Date();

  //   // Get the year and month
  //   const year = currentDate.getFullYear();
  //   const month = currentDate.getMonth();

  //   // Array of month names for display
  //   const monthNames = [
  //     "January", "February", "March", "April", "May", "June",
  //     "July", "August", "September", "October", "November", "December"
  //   ];

  //   // Start building the HTML for the calendar
  //   let html = `<h3>${monthNames[month]} ${year}</h3>`;
  //   html += '<table>';

  //   // Add table headers
  //   html += '<tr>';
  //   html += '<th>Sun</th>';
  //   html += '<th>Mon</th>';
  //   html += '<th>Tue</th>';
  //   html += '<th>Wed</th>';
  //   html += '<th>Thu</th>';
  //   html += '<th>Fri</th>';
  //   html += '<th>Sat</th>';
  //   html += '</tr>';

  //   // Get the first day of the month
  //   const firstDayOfMonth = new Date(year, month, 1);
  //   const startingDay = firstDayOfMonth.getDay();

  //   // Get the number of days in the month
  //   const daysInMonth = new Date(year, month + 1, 0).getDate();

  //   // Counter for days in the month
  //   let dayCount = 1;

  //   // Loop through each week
  //   for (let i = 0; i < 6; i++) {
  //     html += '<tr>';

  //     // Loop through each day of the week
  //     for (let j = 0; j < 7; j++) {
  //       // Check if we've reached the end of the month
  //       if (dayCount > daysInMonth) {
  //         break;
  //       }

  //       // Check if we're before the start of the month
  //       if (i === 0 && j < startingDay) {
  //         html += '<td></td>';
  //       } else {
  //         html += `<td>${dayCount}</td>`;
  //         dayCount++;
  //       }
  //     }

  //     html += '</tr>';
  //   }

  //   html += '</table>';

  //   // Update the calendar div with the generated HTML
  //   document.querySelector('.calendar').innerHTML = html;
  // }

  // // Call the function to generate the calendar
  // generateCalendar();
