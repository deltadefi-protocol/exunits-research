# Ex Units Research

This is a repo of conducting execution unit comparison in different coding patterns in aiken on-chain script development. It aims to provide a high level understanding of best practice in script writing for Cardano developers.

## How to contribute

### Build a test

Got something want to test but not included in report? You can contribute to this common knowledge-base by building a test.

1. Build a test case with test function prefix of `xu_{category}_`
2. Add the finding to the reports
   - Major comprehensive findings: [core report](./reports/report.md)
   - On primitives: [report](./reports/report-primitives.md)
   - On Plutus types: [report](./reports/report-plutus-types.md)
   - On deserialization: [report](./reports/report-deserialization.md)
   - On control flow: [report](./reports/report-control-flow.md)
3. Add any other report inside the [`other-reports` directory](./reports/other-reports/)
4. Submit a PR

### Provide theory to finding

If you are a computer scientist, and want to provide more context on why some findings behave as it is, you can supplement the documentation.

1. Add theory supports on the corresponding findings in [reports](./reports/)
2. Submit a PR

### Reject some incorrectly generalized findings

Most initial findings are generalized from a few test cases in mind, which might potentially be incomprehensive. If you spotted some incorrect findings, please help to point it out!

It could be in either form of below,

1. Create an issue pointing out which finding is incorrect with brief explanation
2. Directly amending the findings by following the flow of building a test above

Have fun!
