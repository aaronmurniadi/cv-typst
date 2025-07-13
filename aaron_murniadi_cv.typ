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
    columns: (5fr, 0.5fr),
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

#set page(paper: "a4", margin: 0.95in, header: [#text(
    style: "italic",
  )[Last updated: #today]#h(1fr)])

#header(name: [Aaron P. Murniadi], contact: [
  #link("mailto:aaronmurniadi@gmail.com")[aaronmurniadi\@gmail.com] \
  (+62) 881 535 9522, Indonesia, Jakarta
])

I am a Quality Assurance (QA) Software Testing professional with extensive hands-on experience in both manual and automated testing, focused on delivering reliable and well-tested software solutions. In cybersecurity, I have independently discovered, documented, and reported two significant security vulnerabilities affecting national and international websites. Technology, programming, and software development have been long-standing passions that I continue to pursue both professionally and personally. I actively advocate for Free and Open Source Software (FOSS) and support Open Science principles, promoting accessible knowledge and transparent innovation.

#h(1em)

#section-block(
  [Work Experience],
  [#work-heading(
      company: [#link("https://www.ninjavan.co/")[Ninja Van]],
      location: [Jakarta, Indonesia],
      time: [December 2021--_Present_],
    )

    _*Software Engineer 2, QA (Full-time)*_ #h(1fr) #text(size: 0.8em)[September 2024--Present]\
    #point Seamlessly integrated into a newly restructured team, demonstrating strong adaptability and collaboration skills.
    #point Initiated and planned the migration of Karate projects from Maven to Gradle for improved build performance and maintainability.
    #point Appointed as QA Driver App Release Manager, coordinating smoke testing for new driver app releases across three teams to ensure quality and timely delivery.
    #point Transitioning to Developer role through mentoring, training, and skill development.
    #point Developed a Multi-scale Template Matching solution using #link("https://opencv.org/")[OpenCV] to locate UI elements from screenshots based on reference samples

    _*Software Engineer 1, QA (Full-time)*_ #h(1fr) #text(size: 0.8em)[January 2023--August 2024]\
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
  [Publications],
  [
    #publication-heading(
      detail: [Murniadi, Aaron Purnomo (2022) "Waktu Intuitif (durasi) sebagai Dasar Adanya Kehendak Bebas Manusia Menurut Henri Bergson." Driyarkara Jurnal Filsafat, 42 (2): 5. pp. 81--91. ISSN 2809-9516],
      year: [2022],
    )
    #publication-heading(
      detail: ["Ranting Mencari Jalan ke Akar", Mardiatmadja, SJ, B.S. and Whisnu Bintoro, CICM, Dhaniel (2020) "EKLESIOLOGI Langkah demi Langkah. Sudut-Sudut Hening Ziarah Gereja". PT Kanisius, Yogyakarta. ISBN 978-979-21-6665-1],
      year: [2020],
    )
  ],
)

#section-block(
  [My Blog],
  [
    #publication-heading(
      detail: [#link("https://aaron-pm.bearblog.dev/")[https://aaron-pm.bearblog.dev/] "This blog serves as a platform for sharing my ideas, projects, and reflections—covering everything from technical insights to philosophical musings."],
      year: [],
    )
  ],
)

#section-block(
  [Education],
  [#edu-heading(
      department: [SMAK 1 Penabur Cirebon],
      location: [Cirebon, West Java],
      role: [Natural Sciences],
      time: [2014--2017],
    )
    #point Finalist in ANFORCOM (Annual Informatics Competition) 2017 at Diponegoro University, Semarang.
    #point Semi-finalist at POPKOT (Pekan Olahraga Pelajar Tingkat Kota) 2016 in Table Tennis.
    #point Actively involved in student committees for various school events, including: Folklore Drama Festival (2015 & 2016), Science Week (2015), Shiki Matsuri Hanami Japanese Festival (2016), Student Introduction Program (2016), "Live In" community immersion program in Muntilan (2016).
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
