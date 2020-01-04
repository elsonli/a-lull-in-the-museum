export const userSignup = user => {
  return $.ajax({
    method: "POST",
    url: "/api/users",
    data: { user }
  });
};

export const userLogin = user => {
  return $.ajax({
    method: "POST",
    url: "/api/session",
    data: { user }
  });
};

export const userLogout = () => {
  return $.ajax({
    method: "DELETE",
    url: "/api/session"
  });
};
