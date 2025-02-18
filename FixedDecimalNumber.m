To solve this, instead of directly comparing with `isEqualToNumber:`, use the `compare:` method.  This method compares the numerical values, rather than the internal representations. Here's how you can modify the code:

```objectivec
- (BOOL)areDecimalNumbersEqual:(NSDecimalNumber *)decimal1 andDecimal2:(NSDecimalNumber *)decimal2 {
    NSComparisonResult result = [decimal1 compare:decimal2];
    return (result == NSOrderedSame);
}
```
This improved method will correctly identify numerical equality regardless of the string representation used to create the `NSDecimalNumber` objects.