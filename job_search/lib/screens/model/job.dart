class JobList {
  final String company;
  final String logoUrl;
  bool isMark;
  final String title;
  final String location;
  final String time;
  final List<String> req;
  JobList(this.company, this.logoUrl, this.isMark, this.title, this.location,
      this.time, this.req);
  static List<JobList> generateJobs() {
    return [
      JobList(
        'Google LLC',
        'assets/images/google_logo.png',
        false,
        'Principal Product Design',
        '417 Marion , New York\nUnited States',
        'Full Time',
        [
          'Bachelors degree in industrial design, manufacturing, engineering, or a related field.',
          'A creative eye, good imagination, and vision.',
          'A firm grasp of market trends and consumer preferences.',
          'Practical experience using computer-aided design software.',
          'Good technical and IT skills.'
        ],
      ),
      JobList(
        'Airbnb Inc',
        'assets/images/airbnb_logo.png',
        false,
        'Principal Product Design',
        '417 Marion , New York\nUnited States',
        'Full Time',
        [
          'Bachelors degree in industrial design, manufacturing, engineering, or a related field',
          'A creative eye, good imagination, and vision',
          'A firm grasp of market trends and consumer preferences',
          'Practical experience using computer-aided design software',
          'Good technical and IT skills'
        ],
      ),
      JobList(
        'Linkedin',
        'assets/images/linkedin_logo.png',
        false,
        'Principal Product Design',
        '417 Marion , New York\nUnited States',
        'Full Time',
        [
          'A creative eye, good imagination, and vision',
          'A firm grasp of market trends and consumer preferences',
          'Practical experience using computer-aided design software',
          'Good technical and IT skills'
        ],
      ),
    ];
  }
}
