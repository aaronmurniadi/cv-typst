#import "@preview/droplet:0.3.1": dropcap

#let section-block(title, content) = [
  #grid(
    columns: (2fr, 10fr),
    text(size: 1.25em, style: "italic", title), content,
  )
  #v(0.5em)
]

#let work-heading(
  company: [], location: [], time: []) = [
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

#let edu-heading(
  department: [], 
  location: [], 
  role: [], 
  time: []) = [
  #grid(
    columns: (3fr, 1fr),
    align: (left, right),
    row-gutter: 1em,
    [#strong(department) \ #emph(role)], [#location \ #time],
  )
]

#let publication-heading(
detail: [], 
year: [], 
) = [
  #grid(
    columns: (5fr, 0.5fr),
    align: (left, right),
    detail, year
  )
]

#let header(name: [], contact: []) = [
  #grid(
    columns: (3fr, 2fr),
    align: (left + bottom, right + bottom),
    text(size: 2em,style: "italic")[#name], [#contact]
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
  number-width: "proportional"
)


#set page(
  paper: "a4", 
  margin: 0.9in,
  header: [#text(style: "italic")[Last updated: #today]#h(1fr) ]
)

#header(
  name: [Aaron P. Murniadi],
  contact:[ 
    #link("mailto:aaronmurniadi@gmail.com")[aaronmurniadi\@gmail.com] \
    (+62) 881 535 9522 \
    Indonesia, Jakarta
  ],
)

I have hands-on experience in Quality Assurance (QA) Software Testing, both manual and automated, with a strong focus on delivering reliable and well-tested software. 
In the field of cybersecurity, I've independently discovered, documented, and reported two significant security vulnerabilities affecting both national and international websites. 
Technology, programming, and software development have been long-standing passions of mine—interests I continue to pursue both professionally and personally. 
Outside of work, I actively advocate for the use of Free and Open Source Software (FOSS) 
and support the principles of Open Science, believing in the importance of accessible knowledge and transparent innovation.

#h(1em)

#section-block([Work\ Experience],
  [#work-heading(
      company: [#link("https://www.ninjavan.co/")[Ninja Van]],
      location: [Jakarta, Indonesia],
      time: [Dec 2021--_Present_],
    )

_*Full time as Software Engineer 2, QA*_ (Sep 2024--_Present_)
#point Quickly integrated into a newly restructured team, demonstrating adaptability and collaboration.
#point Initiated and planned the migration of Karate projects from Maven to Gradle for improved build performance and maintainability.
#point Began transitioning towards a Developer role through self-driven training and skill development.
#point Appointed as QA Driver App Release Manager, coordinating smoke testing for new driver app releases across three teams to ensure quality and timely delivery.

_*Full time as Software Engineer 1, QA*_ (January 2023--August 2024)
#point Given responsibility as a _Hybrid Tester_, proficient in both manual and automated testing, with prioritization driven by business objectives.
#point Designed, developed, and maintained automated regression test suites in Java. 
Covered API testing using #link("https://rest-assured.io/")[REST Assured] 
and #link("https://square.github.io/okhttp/")[OkHttp], 
front-end web testing with #link("https://www.selenium.dev/documentation/webdriver/")[Selenium WebDriver], 
and Android application testing via #link("https://github.com/appium/appium-flutter-driver")[Appium Flutter Driver]. 
All tests were using #link("https://github.com/cucumber/cucumber-jvm")[Cucumber-JVM] framework.
#point Become the primary contributor in integrating #link("https://github.com/karatelabs/karate")[Karate DSL] into the shared automation suite adoemed by the QA team.
#point Led the design and implementation of an API to Scenario (ATS) mapping system to establish traceability between automated tests and backend APIs. This initiative included the development of a new API service written in _Go_.
#point Contributed to the integration of OpenAPI-generated API clients—used in production—into the QA automation framework to improve testing fidelity.

_*Internship as Software Tester*_ (_Internship_, December 2021--December 2022)
#point Executed manual testing activities on new product features and functional enhancements to ensure quality and adherence to requirements.
#point Authored and managed test scenarios using #link("https://studio.cucumber.io/")[Cucumber Studio].
#point Performed smoke tests in live environments to validate the stability of newly deployed features.
#point Created a Python-based utility to support manual testers by streamlining common validation tasks through semi-automation, leveraging the #link("https://github.com/behave/behave")[Behave] framework.
  ]
)

// #section-block(
//   [Skills],
//   [
//     #set terms(separator: [: ])
//     / Software: Git, VS Code, JetBrain’s IntelliJ, Postman, DBeaver, Office 365, Google Workspace, LaTeX.
//     / Languages: Bahasa (native), English (Intermediate Reading, Writing, Listening, Speaking).
//     / Programming: Python, Java, SQL, Golang.
//     / Operating System: Windows XP-11, MacOS, Ubuntu, Manjaro, Arch Linux, Fedora, Android.
//   ],
// )


#section-block(
  [Publications],
  [
    #publication-heading(
      detail: [Murniadi, Aaron Purnomo (2022) "Waktu intuitif (durasi) sebagai dasar adanya kehendak bebas manusia menurut Henri Bergson." Driyarkara Jurnal Filsafat, 42 (2): 5. pp. 81--91. ISSN 2809-9516],
      year: [2022]
    )
    #publication-heading(
      detail: ["Ranting Mencari Jalan ke Akar", Mardiatmadja, SJ, B.S. and Whisnu Bintoro, CICM, Dhaniel (2020) "EKLESIOLOGI Langkah demi Langkah. Sudut-Sudut Hening Ziarah Gereja". PT Kanisius, Yogyakarta. ISBN 978-979-21-6665-1],
      year: [2020]
    )
  ]
)

#section-block(
  [Blog],
  [
    #publication-heading(
      detail: [#link("https://aaron-pm.bearblog.dev/")[https://aaron-pm.bearblog.dev/]],
    )
  ]
)


#section-block([Education],
  [#edu-heading(
      department: [SMAK 1 Penabur Cirebon],
      location: [Cirebon, West Java],
      role: [Natural Sciences],
      time: [2014--2017])   
#point Finalist in the Programming Competition at ANFORCOM (Annual Informatics Competition) 2017, hosted by Diponegoro University, Semarang.  
#point Table tennis athlete, reached the semi-finals at POPKOT (Pekan Olahraga Pelajar Tingkat Kota) in 2016.  
#point Actively involved in student committees for various school events, including:
Folklore Drama Festival (2015 & 2016), Science Week (2015), Shiki Matsuri Hanami Japanese Festival (2016),
Student Introduction Program (2016), "Live In" community immersion program in Muntilan (2016)
])



#v(1fr)

#grid(
    columns: (3fr,4fr, 3fr),
    align: (left, center, right),
    [],[“It is not the strongest of the species that survives, nor the most intelligent; it is the one most adaptable to change.” — _Charles Darwin_],[]
  )
  
#v(2fr)