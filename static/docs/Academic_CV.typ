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
- Architected EM-based metagenomic classifier in Rust, leveraging FM-index for memory-efficient classification of paired-end Illumina reads
- Implemented compressed FM-index (suffix array → BWT → C array → Occ table) enabling terabyte-scale reference database handling
- Developed penalized Expectation-Maximization algorithm for accurate abundance estimation with convergence guarantees
- Ported core classification pipeline to WebGPU via wgpu, enabling browser-based inference on client-side hardware
- Authored Phylo-rs, a comprehensive Rust crate for phylogenetic analysis with 10x speedup over Python implementations
- Engineered WASM-compatible data structures for zero-copy deployment of bioinformatics algorithms to web clients

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
  name: "Rust, GPU, WebGPU",
  role: "PREMISE",
  dates: dates-helper(start-date: "Jan 2026", end-date: "Present"),
)
- Engineered premise, an EM-based metagenomic classifier for paired-end Illumina reads with browser-based GUI
- Implemented compressed FM-index for memory-efficient large-scale reference databases
- Developed penalized Expectation-Maximization algorithm for accurate abundance estimation
- Ported full classification pipeline to WebGPU via wgpu, enabling client-side inference

#project(
  name: "Rust, WebGPU",
  role: "webgpu-fmidx",
  dates: dates-helper(start-date: "Feb 2026", end-date: "Present"),
)
- Built GPU-accelerated FM-index construction for DNA sequences using compute shaders in WGSL
- Implemented radix sort, prefix sum, and gather shaders for parallel suffix array → BWT → C array → Occ table construction
- Achieved identical CPU/GPU results with zero-copy serialization via bincode
- Targeted both native (Vulkan/Metal/DX12) and WebAssembly deployments via wasm-pack

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

- *Vijendran, S.*, Dorman, K., Anderson, T. K., & Eulenstein, O. #link("https://doi.org/10.64898/2026.03.15.711921")["premise: an EM-based metagenomic classifier for paired-end Illumina reads."] _bioRxiv_ (2026).
- *Vijendran, S.*, Arruda, B., Anderson, T. K., & Eulenstein, O. #link("https://www.biorxiv.org/content/10.1101/2025.10.13.681994v1")["SmartHisto: Bayesian Active Learning for Histology Images."] _bioRxiv_ (2025).
- *Vijendran, S.*, Anderson, T., Markin, A., & Eulenstein, O. #link("https://doi.org/10.1186/s12859-025-06234-w")["Phylo-rs: an extensible phylogenetic analysis library in rust."] _BMC Bioinformatics_ 26, no. 1 (2025).
- Markin, A., *Vijendran, S.*, & Eulenstein, O. #link("https://arxiv.org/abs/2411.13380")["Bounds on the Treewidth of Level-k Rooted Phylogenetic Networks."] _arXiv_ (2024).
- Nguyen, T.Q., Hutter, C.R., Markin, A., Thomas, M., Lantz, K., Killian, M.L., Janzen, G.M., *Vijendran, S.*, Wagle, S., Inderski, B., et al. #link("https://doi.org/10.1126/science.adq0900")["Emergence and interstate spread of highly pathogenic avian influenza A (H5N1) in dairy cattle in the United States."] _Science_ 388, no. 6745 (2025).
- Górecki, P., Markin, A., *Vijendran, S.*, & Eulenstein, O. #link("https://doi.org/10.1371/journal.pcbi.1013069")["Computing generalized cophenetic distances under all Lp norms: A near-linear time algorithmic framework."] _PLOS Computational Biology_ 21, no. 6 (2025).
- *Vijendran, S.*, & Dubey, R. #link("https://ieeexplore.ieee.org/document/8710700")["Deep online sequential extreme learning machines and its application in pneumonia detection."] _2019 8th International Conference on Industrial Technology and Management (ICITM)_ (2019).

// ==========================================
// SKILLS
// ==========================================
== Technical Skills

- *Languages*: Rust, Python, C/C++, JavaScript, TypeScript, SQL, Bash, WGSL
- *ML & Data Science*: PyTorch, TensorFlow, Pandas, NumPy, Scikit-learn, Matplotlib, EM algorithms
- *Systems & Tools*: Git, Docker, WASM, WebGPU, wgpu, Linux, Vim, CI/CD, bincode
- *Web Frameworks*: Flask, Material-UI, HTML/CSS, Compute Shaders
