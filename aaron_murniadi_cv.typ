#let section-block(title, content) = [
  #grid(
    columns: (2fr, 10fr),
    gutter: 1em,
    align: (right, left),
    text(size: 1.25em, style: "italic", title), content,
  )
  #v(0.5em)
]

#let work-heading(company: [], location: [], time: []) = [
  #grid(
    columns: (3fr, 2fr),
    align: (left, right),
    [
      #text(weight: "bold")[#smallcaps[#company]]
      #if location != [] [| #location]
    ],
    time,
  )
]

#let edu-heading(department: [], location: [], role: [], time: []) = [
  #grid(
    columns: (3fr, 1fr),
    align: (left, right),
    row-gutter: 1em,
    [#strong(department) \ #emph(role)], [#location \ #time],
  )
]

#let publication-heading(detail: [], year: []) = [
  #grid(
    columns: (5fr, 1fr),
    align: (left, right),
    detail, year,
  )
]

#let header(name: [], contact: []) = [
  #grid(
    columns: (3fr, 2fr),
    align: (left + bottom, right + bottom),
    text(size: 2em, style: "italic")[#name], [#contact],
  )
  #line(length: 100%, stroke: 1pt)
]

#let point = text(size: 1em, weight: "bold")[#text("★")]

// =============================================
// =============================================

#let today = datetime.today().display("[month repr:long] [day], [year]")

#set par(justify: true)
#set text(
  hyphenate: false,
  number-type: "lining",
  number-width: "proportional",
)

#set page(paper: "a4", margin: 0.95in, footer: [#text(
    style: "italic",
  )[#h(1fr) Last updated: #today #h(1fr)] #context [\[#counter(page).display() / #counter(page).final().first()]\]])

#header(
  name: [Aaron P. Murniadi],
  contact: [
    #link("mailto:aaronmurniadi@gmail.com")[_aaronmurniadi\@gmail.com_] \
    (+62) 881 535 9522, Indonesia, Jakarta \
    #link("https://www.linkedin.com/in/aaronmurniadi/")[LinkedIn] | #link("https://github.com/aaronmurniadi")[GitHub] | #link("https://aaron-pm.bearblog.dev/")[My Blog]
  ],
)

Professional QA Software Engineer with expertise in both manual and automated testing, specializing in comprehensive test automation frameworks and cross-platform application testing. Additional track record in cybersecurity research with two independently discovered vulnerabilities in high-profile systems. Currently transitioning from QA to Developer role while maintaining deep expertise in quality assurance methodologies. Passionate advocate for FOSS principles and open science, with published philosophical research bridging technology and humanities.

#h(1em)

#section-block(
  [Work Experience],
  [#work-heading(
      company: [#link("https://www.ninjavan.co/")[Ninja Van]],
      location: [Jakarta, Indonesia],
      time: [December 2021--_Present_],
    )

    _*Software Engineer 2, QA*_ #h(1fr) #text(size: 0.8em)[September 2024--Present]\
    #point Seamlessly integrated into a newly restructured team, demonstrating strong adaptability and collaboration skills.
    #point Initiated and planned the migration of Karate projects from Maven to Gradle for improved build performance and maintainability.
    #point Appointed as QA Driver App Release Manager, coordinating smoke testing for new driver app releases across three teams to ensure quality and timely delivery.
    #point Transitioning to Developer role through mentoring, training, and skill development.
    #point Developed a Multi-scale Template Matching solution using #link("https://opencv.org/")[OpenCV] to locate UI elements from screenshots based on reference samples

    _*Software Engineer 1, QA*_ #h(1fr) #text(size: 0.8em)[January 2023--August 2024]\
    #point Served as a _Hybrid Tester_, proficient in both manual and automated testing, with prioritization driven by business objectives.
    #point Designed, developed, and maintained automated regression test suites in Java, covering API testing using #link("https://rest-assured.io/")[REST Assured] and #link("https://square.github.io/okhttp/")[OkHttp], front-end web testing with #link("https://www.selenium.dev/documentation/webdriver/")[Selenium WebDriver], and Android application testing via #link("https://github.com/appium/appium-flutter-driver")[Appium Flutter Driver]. All tests utilized the #link("https://github.com/cucumber/cucumber-jvm")[Cucumber-JVM] framework.
    #point Became the primary contributor in integrating #link("https://github.com/karatelabs/karate")[Karate DSL] into the shared automation suite adopted by the QA team.
    #point Led the design and implementation of an API to Scenario (ATS) mapping system to establish traceability between automated tests and backend APIs, including the development of a new API service written in _Go_.
    #point Contributed to the integration of OpenAPI-generated API clients—used in production—into the QA automation framework to improve testing fidelity.

    _*Software Tester (Internship)*_ #h(1fr) #text(size: 0.8em)[December 2021--December 2022]\
    #point Executed manual testing activities on new product features and functional enhancements to ensure quality and adherence to requirements.
    #point Authored and managed test scenarios using #link("https://studio.cucumber.io/")[Cucumber Studio].
    #point Performed smoke tests in production environment to validate the stability of newly deployed features.
    #point Created a Python-based automation project to support manual testers through semi-automation, leveraging the #link("https://github.com/behave/behave")[Behave] framework.
  ],
)

#section-block(
  [Technical Skills],
  [
    *Programming Languages:* #link("https://www.oracle.com/java/")[Java], #link("https://go.dev/")[Go], #link("https://www.python.org/")[Python], \
    *Testing Frameworks:* #link("https://www.selenium.dev/")[Selenium], #link("https://rest-assured.io/")[REST Assured], #link("https://square.github.io/okhttp/")[OkHttp], #link("https://github.com/cucumber/cucumber-jvm")[Cucumber-JVM], #link("https://github.com/karatelabs/karate")[Karate DSL], #link("https://github.com/behave/behave")[Behave], #link("https://appium.io/")[Appium] \
    *Development Tools:* #link("https://maven.apache.org/")[Maven], #link("https://gradle.org/")[Gradle], #link("https://opencv.org/")[OpenCV], #link("https://git-scm.com/")[Git], #link("https://swagger.io/specification/")[OpenAPI], #link("https://www.atlassian.com/software/bamboo")[Bamboo] \
    *Testing Specialties:* API Testing, Web Automation, Mobile Testing \
    *Methodologies:* #link("https://agilemanifesto.org/")[Agile], Test-Driven Development \
    *Additional:* Cybersecurity Research, FOSS Advocacy, Technical Writing
  ],
)

#section-block(
  [Security Research],
  [
    #publication-heading(
      detail: [*Vulnerability Disclosure Program Contributions* \ Independently discovered and responsibly disclosed two critical security vulnerabilities affecting national and international web applications, demonstrating strong ethical hacking capabilities and commitment to cybersecurity best practices.],
      year: [2022--2023],
    )
  ],
)

#section-block(
  [Publications],
  [
    #publication-heading(
      detail: [Murniadi, Aaron Purnomo (2022) "Waktu Intuitif (durasi) sebagai Dasar Adanya Kehendak Bebas Manusia Menurut Henri Bergson." #link("https://ejournal.driyarkara.ac.id/index.php/driyarkara")[_Driyarkara Jurnal Filsafat_], 42 (2): 5. pp. 81--91. ISSN 2809-9516],
      year: [2022],
    )
    #publication-heading(
      detail: ["Ranting Mencari Jalan ke Akar", Mardiatmadja, SJ, B.S. and Whisnu Bintoro, CICM, Dhaniel (2020) "EKLESIOLOGI Langkah demi Langkah. Sudut-Sudut Hening Ziarah Gereja". #link("https://www.kanisius.co.id/")[PT Kanisius], Yogyakarta. ISBN 978-979-21-6665-1],
      year: [2020],
    )
  ],
)

#section-block(
  [Education &\ Achievements],
  [#edu-heading(
      department: [SMAK 1 Penabur Cirebon],
      location: [Cirebon, West Java],
      role: [Natural Sciences Concentration],
      time: [2014--2017],
    )

    *Academic Competitions:*
    #point Finalist in ANFORCOM (Annual Informatics Competition) 2017 at #link("https://www.undip.ac.id/")[Diponegoro University], Semarang—demonstrating early programming and problem-solving excellence.
    #point Semi-finalist at POPKOT (Pekan Olahraga Pelajar Tingkat Kota) 2016 in Table Tennis, showcasing competitive excellence and sportmanship.

    *Leadership & Community Engagement:*
    #point Student committee leadership across 6 major school events (2015-2016), including cultural festivals, academic programs, and community outreach initiatives.
    #point Participated in "Live In" community immersion program in Muntilan (2016), developing cultural sensitivity and social awareness through direct community engagement.
  ],
)

#v(1fr)

#grid(
  columns: (3fr, 3.5fr, 3fr),
  align: (left, center, right),
  [],
  ["It is not the strongest of the species that survives, nor the most intelligent; it is the one most adaptable to change." — _Charles Darwin_],
  [],
)

#v(2fr)
