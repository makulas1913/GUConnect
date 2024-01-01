<div id="top"></div>

<h1 align="center">Welcome to GUConnect</h1>

<div align="center">
    <img src="./app/assets/images/GUConnect-Logo.png" alt="Logo" width="150" height="140">



  <h3 align="center"></h3>

  <p align="center">
 Student and Staff App is a multifunctional platform catering to the German University in Cairo community, integrating essential features like anonymous confessions, academic queries, lost and found, location services, and user-controlled news/events, while tracking usability data for continual improvement.
	  <br />

	·  
   <a href="">Demo Video</a>
   ·	  
   <a href="https://www.figma.com/file/fjW8vTZtumP8PWdHbwwErI/GUConnect?type=design&node-id=0%3A1&mode=design&t=NdpYR8ra6wORu8Fs-1">Figma </a>  
 ·	  
   <a href="https://lucid.app/lucidchart/e678ad3f-d21e-473a-aeb1-ace8cea06b62/edit?viewport_loc=-2028%2C-46%2C3091%2C1487%2CHWEp-vi-RSFO&invitationId=inv_842808d6-f19f-4b1e-a7b9-9cd768dd9e86">UML </a>  
   ·	  
   <a href="https://docs.google.com/spreadsheets/d/1lI0hLmn0Jz3ZJwm410RHPvpFhJihtHBz-o7q4khgfYc/edit?usp=sharing">User Requirements </a>
   ·
   <a href="mailto:osa.helpme@gmail.com?subject=UnExpected%20Error%20Occured&body=Sorry%20for%20the%20inconvenience%2C%20Please%20describe%20Your%20situation%20and%20emphasis%20the%20Endpoint%20!%0A">Report Bug</a>
   	      ·
    <a href="mailto:osa.helpme@gmail.com?subject=I%20want%20to%20be%20a%20Contributor%20to%20Bachelor Thesis&body=Dear%20Omar%20Sherif">Be a Contributer</a>
  </p>
</div>



## 💡 Description
The GUConnect is a Student and Staff App that is a dynamic platform tailored for the German University in Cairo community. Emphasizing user engagement and utility, the app requires GUC email verification for signup and includes an admin account. Its versatile features encompass Confessions for anonymous posts, academic inquiries with image uploads and ratings, Lost and Found, location services for university offices and outlets, essential phone number databases, and an editable News/Events section managed by approved users. The app's intuitive design strategically organizes functions while ensuring push notifications for updates. Admin control can be managed within the app. Crucially, the app collects usability data, tracking user interactions and behaviors to enhance functionality and user experience continually.


### Open the App
- clone the repo ```git clone```

- ```cd app```

- Install dependencies ``` flutter pub get```

- run the project ```flutter run```


### 📷 Screenshots

### Objectives: 
- User Engagement: To create an app that appeals to GUC students and staff, encouraging active participation and usage.
- Functionality and Utility: Providing diverse functionalities catering to academic, social, and emergency needs within the GUC community.
- Administrative Control: Efficient admin tools to add, edit, delete university staff and course information,  manage, moderate, and approve user-generated content.
- Usability Enhancement: Gathering and analyzing user behavior data to enhance app usability and user experience over time.

### Motivation:
- Enhancing Campus Life: Empowering students and staff by providing a central platform for various needs.
- Encouraging Participation: Fostering a sense of community and collaboration within the GUC.
- Improving User Experience: Continuously evolving and adapting the app based on user behavior insights for a more user-friendly experience.

### 💻️ Languages & Libraries Used
- Flutter: is Google's open-source UI toolkit for building natively compiled applications for mobile, web, and desktop from a single codebase, using the Dart programming language.

- Firebase SDK: is a comprehensive platform by Google that offers tools and services for mobile and web app development, including authentication, Firestore (a NoSQL cloud database), cloud functions, and more, simplifying backend infrastructure management.
	- Firestore is Firebase's NoSQL cloud database that provides real-time data synchronization and querying capabilities, allowing developers to structure and manage app data efficiently across various devices.

	- Firebase Authentication (FireAuth): is a secure authentication system within Firebase SDK, enabling easy integration of user authentication methods like email/password, social logins, and phone number authentication into mobile and web applications.

	- Cloud Functions: is a serverless computing service that allows developers to execute backend code in response to events triggered by Firebase features or HTTP requests, enabling custom server-side logic without managing servers directly.
 - 
	- Local Notifications: are alerts triggered and displayed directly on a user's device, enhancing user engagement by providing timely updates, reminders, or alerts within the app without requiring a server.
	- Google Maps: is a mapping service that, when integrated into Flutter using google_maps_flutter package, offers interactive maps, markers, routing, and geolocation services, enabling users to explore locations and navigate within mobile applications.


<p align="right">(<a href="#top">back to top</a>)</p>

### Database Structures:
The database will store user profiles, posts (confessions, academic queries, lost and found items, news, events), admin approvals, user behavior logs, and other necessary data to support the functionalities mentioned above.


### Flutter Folder Structure

```
├── firebase_options.dart
├── main.dart
├── routes.dart
├── src
│   ├── dummy_data
│   │   ├── importantEmails.dart
│   │   ├── importantNumbers.dart
│   │   ├── OfficeItems.dart
│   │   ├── posts.dart
│   │   └── user.dart
│   ├── models
│   │   ├── AcademicQuestion.dart
│   │   ├── Comment.dart
│   │   ├── Confession.dart
│   │   ├── Course.dart
│   │   ├── ImportantEmail.dart
│   │   ├── ImportantPhoneNumber.dart
│   │   ├── LostAndFound.dart
│   │   ├── NewsEventClub.dart
│   │   ├── OfficeAndLocation.dart
│   │   ├── Post.dart
│   │   ├── Rating.dart
│   │   ├── Reports.dart
│   │   ├── Staff.dart
│   │   ├── Usability.dart
│   │   ├── User.dart
│   │   └── UserRating.dart
│   ├── providers
│   │   ├── AcademicQuestionProvider.dart
│   │   ├── CommentProvider.dart
│   │   ├── ConfessionProvider.dart
│   │   ├── CourseProvider.dart
│   │   ├── ImportantEmailProvider.dart
│   │   ├── ImportantPhoneNumberProvider.dart
│   │   ├── LikesProvider.dart
│   │   ├── LostAndFoundProvider.dart
│   │   ├── NewsEventClubProvider.dart
│   │   ├── OfficeLocationProvider.dart
│   │   ├── PostProvider.dart
│   │   ├── RatingProvider.dart
│   │   ├── ReportsProvider.dart
│   │   ├── StaffProvider.dart
│   │   ├── UsabilityProvider.dart
│   │   └── UserProvider.dart
│   ├── screens
│   │   ├── admin
│   │   │   ├── pending_reports.dart
│   │   │   ├── pendings_screen.dart
│   │   │   ├── report_content.dart
│   │   │   ├── request_post_screen.dart
│   │   │   ├── search_course.dart
│   │   │   ├── search_staff.dart
│   │   │   ├── set_course_screen.dart
│   │   │   ├── set_important_contacts_screen.dart
│   │   │   ├── set_office_screen.dart
│   │   │   └── set_staff_screen.dart
│   │   ├── authentication
│   │   │   ├── login.dart
│   │   │   └── register.dart
│   │   ├── common
│   │   │   ├── about.dart
│   │   │   ├── AcademicRelated
│   │   │   │   ├── academicRelated.dart
│   │   │   │   ├── addAcademicQuestion.dart
│   │   │   │   └── editAcademicPost.dart
│   │   │   ├── confessions
│   │   │   │   ├── addConfessions.dart
│   │   │   │   └── confessions.dart
│   │   │   ├── important_contacts.dart
│   │   │   ├── L&F
│   │   │   │   ├── addLostAndFoundPost.dart
│   │   │   │   ├── editLostAndFoundPost.dart
│   │   │   │   └── lostAndFound.dart
│   │   │   ├── newsEvents
│   │   │   │   ├── addPostClubs.dart
│   │   │   │   ├── clubsAndEvents.dart
│   │   │   │   └── editPostClubs.dart
│   │   │   ├── officesAndOutlets.dart
│   │   │   └── splash.dart
│   │   ├── course
│   │   │   └── course_profile.dart
│   │   ├── staff
│   │   │   └── profile.dart
│   │   └── user
│   │       ├── profile.dart
│   │       ├── profile_edit.dart
│   │       ├── profile_edit_form.dart
│   │       ├── search.dart
│   │       └── settings.dart
│   ├── services
│   │   └── notification_api.dart
│   ├── utils
│   │   ├── dates.dart
│   │   ├── titleCase.dart
│   │   └── uploadImageToStorage.dart
│   └── widgets
│       ├── app_bar.dart
│       ├── bottom_bar.dart
│       ├── cached_image.dart
│       ├── comment.dart
│       ├── comment_popup_menu.dart
│       ├── comments_modal.dart
│       ├── confession_widget.dart
│       ├── drawer.dart
│       ├── edit_comment.dart
│       ├── email_field.dart
│       ├── error_essage.dart
│       ├── input_field.dart
│       ├── likable_image.dart
│       ├── loader.dart
│       ├── mention_field.dart
│       ├── message_dialog.dart
│       ├── password_field.dart
│       ├── phone_field.dart
│       ├── popup_menue_button.dart
│       ├── post.dart
│       ├── post_widget.dart
│       ├── RatingBar.dart
│       ├── report_modal.dart
│       ├── status_indicator.dart
│       └── user_image_picker.dart
└── themes
    ├── colors.dart
    ├── sizes.dart
    └── themes.dart

```

### ⚠️ Disclaimer

Users who will Use this Data should only use it for Practice and <strong>not for Commercial Purposes !</strong>

<p align="right">(<a href="#top">back to top</a>)</p>


### 📷 Screenshots


### Database Structures and Firebase Schema

### CustomUser Class
- Description: Represents a user in the application.
- Schema:
  - fullName: String
  - userName: String
  - phoneNumber: String (optional)
  - image: String (optional)
  - email: String
  - password: String
  - biography: String (optional)
  - userType: String (admin, student, staff)
  - user_id: String
  - token: String (optional)
- Firestore Database:
  - Collection: users
  - Document fields: fullName, userName, phoneNumber, image, email, password, biography, userType, user_id, token

### Comment Class
- Description: Represents a comment made by a user on a post.
- Schema:
  - id: String
  - content: String
  - commenter: CustomUser
  - createdAt: DateTime
  - postType: int
- Roles in Firestore Database:
  - Collection: comments
  - Document fields: id, content, commenter, createdAt, postType

### Confession Class
- Description: Represents a confession made by a user.
- Schema:
  - isAnonymous: bool
  - mentionedPeople: List<CustomUser> (optional)
  - comments: List<Comment>
  - likes: Set<String>
- Roles in Firestore Database:
  - Collection: confessions
  - Document fields: isAnonymous, mentionedPeople, comments, likes
    
### Rating Class
- Description: Represents the ratings for a course or staff.
- Schema:
  - id: String
  - ratingSum: double
  - ratingAverage: double
  - ratingCount: int
- Roles in Firestore Database:
  - Collection: ratings
  - Document fields: id, ratingSum, ratingAverage, ratingCount

### Course Class
- Description: Represents a course in the application.
- Schema:
  - courseCode: String
  - courseName: String
  - image: String (optional)
  - ratings: List<Rating>
  - description: String
- Roles in Firestore Database:
  - Collection: courses
  - Document fields: courseCode, courseName, image, ratings, description

### ImportantEmail Class
- Description: Represents an important email contact for staff.
- Schema:
  - title: String
  - email: String
- Roles in Firestore Database:
  - Collection: importantEmails
  - Document fields: title, email

### ImportantPhoneNumber Class
- Description: Represents an important phone number contact.
- Schema:
  - title: String
  - phoneNumber: String
- Roles in Firestore Database:
  - Collection: importantPhoneNumbers
  - Document fields: title, phoneNumber

### LostAndFound Class
- Description: Represents a lost and found item.
- Schema:
  - contact: String (optional)
  - likes: Set<String>
  - comments: List<Comment>
- Roles in Firestore Database:
  - Collection: lostAndFoundItems
  - Document fields: contact, likes, comments

### OfficeAndLocation Class
- Description: Represents an office location.
- Schema:
  - name: String
  - latitude: double
  - longitude: double
  - location: String
  - isOffice: bool
- Roles in Firestore Database:
  - Collection: officeLocations
  - Document fields: name, latitude, longitude, location, isOffice

### Post Class
- Description: Represents a post made by a user.
- Schema:
  - content: String
  - sender: CustomUser
  - createdAt: DateTime
  - id: String
  - image: String
  - likes: Set<String>
  - comments: List<Comment>
- Roles in Firestore Database:
  - Collection: posts
  - Document fields: content, sender, createdAt, id, image, likes, comments

### Report Class
- Description: Represents a report made by a user.
- Schema:
  - id: String
  - reportedContentId: String
  - reportedUser: CustomUser
  - reportedContent: String
  - reportType: String
  - createdAt: DateTime
  - image: String (optional)
  - reason: String
  - clarification: String (optional)
- Roles in Firestore Database:
  - Collection: reports
  - Document fields: id, reportedContentId, reportedUser, reportedContent, reportType, createdAt, image, reason, clarification

### Staff Class
- Description: Represents a staff member in the application.
- Schema:
  - fullName: String
  - image: String (optional)
  - email: String
  - officeLocation: String (optional)
  - staffType: String
  - bio: String (optional)
  - description: String
  - speciality: String
  - courses: List<String>
  - ratings: List<Rating>
- Roles in Firestore Database:
  - Collection: staffMembers
  - Document fields: fullName, image, email, officeLocation, staffType, bio, description, speciality, courses, ratings

### UserRating Class
- Description: Represents a user rating for a course or staff member.
- Schema:
  - id: String
  - userId: String
  - rating: double
  - comment: String (optional)
  - createdAt: Timestamp
  - updatedAt: Timestamp
- Roles in Firestore Database:
  - Collection: userRatings
  - Document fields: id, userId, rating, comment, createdAt, updatedAt

### AcademicQuestion Class
- Description: Represents an academic question posted by a user.
- Schema:
  - likes: Set<String>
  - comments: List<Comment>
- Roles in Firestore Database:
  - Collection: academicQuestions
  - Document fields: likes, comments

### ScreenTime Class
- Description: Represents the screen time for usability tracking.
- Schema:
  - screenName: String
  - startTime: DateTime
  - endTime: DateTime
  - duration: double

### UserEvent Class
- Description: Represents a user event for usability tracking.
- Schema:
  - eventName: String
  - timeStampe: DateTime

### Usability Class
- Description: Represents the usability data for a user.
- Schema:
  - user_email: String
  - user_type: String
  - events: List<UserEvent> (optional)
  - screenTimes: List<ScreenTime> (optional)
- Firestore Database:
  - Collection: usabilityData
  - Document fields: user_email, user_type, events, screenTimes
  - 

