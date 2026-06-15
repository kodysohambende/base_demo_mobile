enum ErrorType { error403, error404, noInternet }

enum Language { english, arabic }

enum SideBarModuleType {
  dashboard,
  master,
  childRobotMaster,
  device,
  destination,
  manageUsers,
  defaultAds,
  support,
  patient,
  milestone,
  presidentVideo,
  unknown,
}

enum SideBarChildModuleType {
  // ─── Master children ─────────────────────────────────────────────────────
  country,
  state,
  city,
  ticketReason,
  medicalDevice,
  medicalTest,
  assessment,

  // ─── Child Robot Master children ─────────────────────────────────────────
  ageGroup,
  vaccination,
  vaccinationSchedule,
  milestoneCategory,
  growthStandard,

  // ─── Manage Users children ───────────────────────────────────────────────
  destinationUser,
  rolePermission,
  users,

  // ─── Support children ────────────────────────────────────────────────────
  ticket,
  cms,
  faq,
  company,

  // ─── Patient children ────────────────────────────────────────────────────
  adultPatient,
  childPatient,
  unknown,
}