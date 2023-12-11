# Ex Units Research

This is a repo of conducting execution unit comparison in different coding patterns in aiken on-chain scripts development. It aims to provide a high level understanding of best practice in script writing for Cardano developers.

## How to contribute

1. Build a test case with test function prefix of `xu_{category}_`
2. Add the finding to the reports
   - Major comprehensive findings: [core report](./reports/report.md)
   - On primitives: [report](./reports/report-primitives.md)
   - On Plutus types: [report](./reports/report-plutus-types.md)
   - On deserialization: [report](./reports/report-deserialization.md)
   - On control flow: [report](./reports/report-control-flow.md)
3. Add any other report inside the [`other-reports` directory](./reports/other-reports/)
4. Submit a PR

Have fun!
