#import "@preview/basic-resume:0.2.9": *

// Personal Information
#let name = "Sriram Vijendran"
#let location = "Ames, Iowa"
#let email = "vijendran.sriram@gmail.com"
#let github = "github.com/sriram98v"
#let linkedin = "linkedin.com/in/sriram-vijendran-02595512a"
#let personal-site = "sriram98v.github.io"

#show: resume.with(
  author: name,
  location: location,
  email: email,
  github: github,
  linkedin: linkedin,
  personal-site: personal-site,
  accent-color: "#26428b",
  font: "New Computer Modern",
  paper: "us-letter",
  author-position: left,
  personal-info-position: left,
)

// ==========================================
// EDUCATION
// ==========================================
== Education

#edu(
  institution: "Iowa State University",
  location: "Ames, IA",
  dates: dates-helper(start-date: "Jan 2021", end-date: "Present"),
  degree: "Ph.D. in Computer Science",
)

#edu(
  institution: "SRM Institute of Science and Technology",
  location: "Chennai, India",
  dates: dates-helper(start-date: "Aug 2016", end-date: "May 2020"),
  degree: "Bachelor of Technology in Electronics Engineering",
)

// ==========================================
// EXPERIENCE
// ==========================================
== Experience

#work(
  title: "Graduate Research Assistant",
  location: "Ames, IA",
  company: "Iowa State University",
  dates: dates-helper(start-date: "Aug 2024", end-date: "Present"),
)
- Designed novel metagenomic software for edge-devices, enabling real-time analysis on limited hardware with minimal memory usage
- Implemented efficient string indexes in Rust, achieving O(n) lookups for large-scale genomic datasets
- Implemented Expectation-Maximization algorithms to accurately estimate population proportions from complex samples
- Authored Phylo-rs, a comprehensive Rust crate for phylogenetic analysis, widely used for high-performance tree inference
- Engineered WASM-compatible data structures to deploy advanced bioinformatics algorithms directly to client-side web apps

#work(
  title: "Research Intern",
  location: "Ames, IA",
  company: "ORISE, USDA-ARS",
  dates: dates-helper(start-date: "Aug 2023", end-date: "Aug 2024"),
)
- Developed AI infection identification models achieving high sensitivity, surpassing standard diagnostic benchmarks
- Designed Bayesian Deep Learning models for uncertainty quantification in Whole-Slide image segmentation
- Deployed an Active Learning algorithm that reduced labeling costs by optimizing sample selection for large-scale segmentation models

#work(
  title: "Undergraduate Research Intern",
  location: "Chennai, India",
  company: "Robert Bosch Center for Data Science and AI",
  dates: dates-helper(start-date: "Nov 2019", end-date: "Nov 2020"),
)
- Developed a novel Neural Network architecture for 3D brain tumor segmentation with improved accuracy
- Explored distributed inference strategies to enable deployment of large-scale models in resource-constrained hospital environments

// ==========================================
// PROJECTS
// ==========================================
== Projects

#project(
  name: "Rust, WASM",
  role: "Phylo-rs",
  dates: dates-helper(start-date: "Aug 2023", end-date: "Present"),
)
- Architected Phylo-rs, a Rust-based phylogenetic library outperforming existing Python tools by 10x in speed via memory-safe implementations
- Implemented advanced phylogenetic algorithms (SPR, diversity metrics) with WebAssembly support for cross-platform usage
- Built an extensible, memory-safe framework now serving as a foundation for safe phylogenetic inference tools

#project(
  name: "Python, Computer Vision, PyTorch",
  role: "SmartHisto",
  dates: dates-helper(start-date: "Aug 2021", end-date: "Dec 2023"),
)
- Engineered a high-throughput pipeline processing terabyte-scale whole-slide images, optimizing I/O bottlenecks for rapid training
- Developed an Active Learning framework to train Bayesian neural networks, significantly reducing annotation requirements

// ==========================================
// SELECTED PUBLICATIONS
// ==========================================
== Selected Publications

- *Vijendran, S.*, Anderson, T., Markin, A., & Eulenstein, O. #link("https://doi.org/10.1186/s12859-025-06234-w")["Phylo-rs: an extensible phylogenetic analysis library in rust."] _BMC Bioinformatics_ 26, no. 1 (2025).
- Nguyen, T.Q., Hutter, C.R., Markin, A., Thomas, M., Lantz, K., Killian, M.L., Janzen, G.M., *Vijendran, S.*, Wagle, S., Inderski, B., et al. #link("https://doi.org/10.1126/science.adq0900")["Emergence and interstate spread of highly pathogenic avian influenza A (H5N1) in dairy cattle in the United States."] _Science_ 388, no. 6745 (2025).
- Górecki, P., Markin, A., *Vijendran, S.*, & Eulenstein, O. #link("https://doi.org/10.1371/journal.pcbi.1013069")["Computing generalized cophenetic distances under all Lp norms: A near-linear time algorithmic framework."] _PLOS Computational Biology_ 21, no. 6 (2025).
- *Vijendran, S.*, Arruda, B., Anderson, T.K., & Eulenstein, O. #link("https://www.biorxiv.org/content/10.1101/2025.10.13.681994v1")["SmartHisto: Bayesian Active Learning for Histology Images."] _bioRxiv_ (2025).
- Markin, A., *Vijendran, S.*, & Eulenstein, O. #link("https://arxiv.org/abs/2411.13380")["Bounds on the Treewidth of Level-k Rooted Phylogenetic Networks."] _arXiv preprint arXiv:2411.13380_ (2024).
- *Vijendran, S.*, & Dubey, R. #link("https://ieeexplore.ieee.org/document/8710700")["Deep online sequential extreme learning machines and its application in pneumonia detection."] _2019 8th International Conference on Industrial Technology and Management (ICITM)_ (2019).

// ==========================================
// SKILLS
// ==========================================
== Technical Skills

- *Languages*: Rust, Python, C/C++, JavaScript, SQL, Bash
- *ML & Data Science*: PyTorch, TensorFlow, Pandas, NumPy, Scikit-learn, Matplotlib
- *Systems & Tools*: Git, Docker, WASM, Linux, Vim, CI/CD (TravisCI)
- *Web Frameworks*: Flask, Material-UI, HTML/CSS

