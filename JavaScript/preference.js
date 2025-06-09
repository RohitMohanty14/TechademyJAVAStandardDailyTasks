function setUserPreferences(language = "English", theme = "Light", notifications = true) {
  const preferences = {
    language: language,
    theme: theme,
    notifications: notifications
  };

 console.log("User preferences set:", preferences);
}