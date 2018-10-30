# Mojo ALU for 50.002

- Our modular ALU files are separated into addsub.luc, bitshift.luc, bool.luc and comparator.luc and then combined into alu.luc.
- There are two different ways to test our code:
  1) Automated testing through the autotest.luc file, which has preset inputs.
  2) Manual testing through the manualtest.luc file, which allows you to set your own inputs.
- Our multi_seven_se.luc and seven_seg.luc files for the 7-seg LED programming are derived from https://alchitry.com/blogs/tutorials/io-shield.
- We are able to store the inputs for manual testing with the storevalues.luc file.
