@_spi(RawSyntax)
public protocol RawTypeSyntaxNodeProtocol: RawSyntaxNodeProtocol {}

@_spi(RawSyntax)
public struct RawTernaryExprSyntax: RawExprSyntaxNodeProtocol {
  @_spi(RawSyntax)
  public var layoutView: RawSyntaxLayoutView {
    return raw.layoutView!
  }
  
  public static func isKindOf(_ raw: RawSyntax) -> Bool {
    return raw.kind == .ternaryExpr
  }
  
  public var raw: RawSyntax
  
  init(raw: RawSyntax) {
    precondition(Self.isKindOf(raw))
    self.raw = raw
  }
  
  private init(unchecked raw: RawSyntax) {
    self.raw = raw
  }
  
  public init?(_ other: some RawSyntaxNodeProtocol) {
    guard Self.isKindOf(other.raw) else {
      return nil
    }
    self.init(unchecked: other.raw)
  }
  
  public init(
      _ unexpectedBeforeCondition: RawUnexpectedNodesSyntax? = nil, 
      condition: RawExprSyntax, 
      _ unexpectedBetweenConditionAndQuestionMark: RawUnexpectedNodesSyntax? = nil, 
      questionMark: RawTokenSyntax, 
      _ unexpectedBetweenQuestionMarkAndThenExpression: RawUnexpectedNodesSyntax? = nil, 
      thenExpression: RawExprSyntax, 
      _ unexpectedBetweenThenExpressionAndColon: RawUnexpectedNodesSyntax? = nil, 
      colon: RawTokenSyntax, 
      _ unexpectedBetweenColonAndElseExpression: RawUnexpectedNodesSyntax? = nil, 
      elseExpression: RawExprSyntax, 
      _ unexpectedAfterElseExpression: RawUnexpectedNodesSyntax? = nil, 
      arena: __shared SyntaxArena
    ) {
    let raw = RawSyntax.makeLayout(
      kind: .ternaryExpr, uninitializedCount: 11, arena: arena) { layout in
      layout.initialize(repeating: nil)
      layout[0] = unexpectedBeforeCondition?.raw
      layout[1] = condition.raw
      layout[2] = unexpectedBetweenConditionAndQuestionMark?.raw
      layout[3] = questionMark.raw
      layout[4] = unexpectedBetweenQuestionMarkAndThenExpression?.raw
      layout[5] = thenExpression.raw
      layout[6] = unexpectedBetweenThenExpressionAndColon?.raw
      layout[7] = colon.raw
      layout[8] = unexpectedBetweenColonAndElseExpression?.raw
      layout[9] = elseExpression.raw
      layout[10] = unexpectedAfterElseExpression?.raw
    }
    self.init(unchecked: raw)
  }
  
  public var unexpectedBeforeCondition: RawUnexpectedNodesSyntax? {
    layoutView.children[0].map(RawUnexpectedNodesSyntax.init(raw:))
  }
  
  public var condition: RawExprSyntax {
    layoutView.children[1].map(RawExprSyntax.init(raw:))!
  }
  
  public var unexpectedBetweenConditionAndQuestionMark: RawUnexpectedNodesSyntax? {
    layoutView.children[2].map(RawUnexpectedNodesSyntax.init(raw:))
  }
  
  public var questionMark: RawTokenSyntax {
    layoutView.children[3].map(RawTokenSyntax.init(raw:))!
  }
  
  public var unexpectedBetweenQuestionMarkAndThenExpression: RawUnexpectedNodesSyntax? {
    layoutView.children[4].map(RawUnexpectedNodesSyntax.init(raw:))
  }
  
  public var thenExpression: RawExprSyntax {
    layoutView.children[5].map(RawExprSyntax.init(raw:))!
  }
  
  public var unexpectedBetweenThenExpressionAndColon: RawUnexpectedNodesSyntax? {
    layoutView.children[6].map(RawUnexpectedNodesSyntax.init(raw:))
  }
  
  public var colon: RawTokenSyntax {
    layoutView.children[7].map(RawTokenSyntax.init(raw:))!
  }
  
  public var unexpectedBetweenColonAndElseExpression: RawUnexpectedNodesSyntax? {
    layoutView.children[8].map(RawUnexpectedNodesSyntax.init(raw:))
  }
  
  public var elseExpression: RawExprSyntax {
    layoutView.children[9].map(RawExprSyntax.init(raw:))!
  }
  
  public var unexpectedAfterElseExpression: RawUnexpectedNodesSyntax? {
    layoutView.children[10].map(RawUnexpectedNodesSyntax.init(raw:))
  }
}

#if compiler(>=5.8)
@_spi(ExperimentalLanguageFeatures)
#endif
@_spi(RawSyntax)
public struct RawThenStmtSyntax: RawStmtSyntaxNodeProtocol {
  @_spi(RawSyntax)
  public var layoutView: RawSyntaxLayoutView {
    return raw.layoutView!
  }
  
  public static func isKindOf(_ raw: RawSyntax) -> Bool {
    return raw.kind == .thenStmt
  }
  
  public var raw: RawSyntax
  
  init(raw: RawSyntax) {
    precondition(Self.isKindOf(raw))
    self.raw = raw
  }
  
  private init(unchecked raw: RawSyntax) {
    self.raw = raw
  }
  
  public init?(_ other: some RawSyntaxNodeProtocol) {
    guard Self.isKindOf(other.raw) else {
      return nil
    }
    self.init(unchecked: other.raw)
  }
  
  public init(
      _ unexpectedBeforeThenKeyword: RawUnexpectedNodesSyntax? = nil, 
      thenKeyword: RawTokenSyntax, 
      _ unexpectedBetweenThenKeywordAndExpression: RawUnexpectedNodesSyntax? = nil, 
      expression: RawExprSyntax, 
      _ unexpectedAfterExpression: RawUnexpectedNodesSyntax? = nil, 
      arena: __shared SyntaxArena
    ) {
    let raw = RawSyntax.makeLayout(
      kind: .thenStmt, uninitializedCount: 5, arena: arena) { layout in
      layout.initialize(repeating: nil)
      layout[0] = unexpectedBeforeThenKeyword?.raw
      layout[1] = thenKeyword.raw
      layout[2] = unexpectedBetweenThenKeywordAndExpression?.raw
      layout[3] = expression.raw
      layout[4] = unexpectedAfterExpression?.raw
    }
    self.init(unchecked: raw)
  }
  
  public var unexpectedBeforeThenKeyword: RawUnexpectedNodesSyntax? {
    layoutView.children[0].map(RawUnexpectedNodesSyntax.init(raw:))
  }
  
  public var thenKeyword: RawTokenSyntax {
    layoutView.children[1].map(RawTokenSyntax.init(raw:))!
  }
  
  public var unexpectedBetweenThenKeywordAndExpression: RawUnexpectedNodesSyntax? {
    layoutView.children[2].map(RawUnexpectedNodesSyntax.init(raw:))
  }
  
  public var expression: RawExprSyntax {
    layoutView.children[3].map(RawExprSyntax.init(raw:))!
  }
  
  public var unexpectedAfterExpression: RawUnexpectedNodesSyntax? {
    layoutView.children[4].map(RawUnexpectedNodesSyntax.init(raw:))
  }
}

@_spi(RawSyntax)
public struct RawThrowStmtSyntax: RawStmtSyntaxNodeProtocol {
  @_spi(RawSyntax)
  public var layoutView: RawSyntaxLayoutView {
    return raw.layoutView!
  }
  
  public static func isKindOf(_ raw: RawSyntax) -> Bool {
    return raw.kind == .throwStmt
  }
  
  public var raw: RawSyntax
  
  init(raw: RawSyntax) {
    precondition(Self.isKindOf(raw))
    self.raw = raw
  }
  
  private init(unchecked raw: RawSyntax) {
    self.raw = raw
  }
  
  public init?(_ other: some RawSyntaxNodeProtocol) {
    guard Self.isKindOf(other.raw) else {
      return nil
    }
    self.init(unchecked: other.raw)
  }
  
  public init(
      _ unexpectedBeforeThrowKeyword: RawUnexpectedNodesSyntax? = nil, 
      throwKeyword: RawTokenSyntax, 
      _ unexpectedBetweenThrowKeywordAndExpression: RawUnexpectedNodesSyntax? = nil, 
      expression: RawExprSyntax, 
      _ unexpectedAfterExpression: RawUnexpectedNodesSyntax? = nil, 
      arena: __shared SyntaxArena
    ) {
    let raw = RawSyntax.makeLayout(
      kind: .throwStmt, uninitializedCount: 5, arena: arena) { layout in
      layout.initialize(repeating: nil)
      layout[0] = unexpectedBeforeThrowKeyword?.raw
      layout[1] = throwKeyword.raw
      layout[2] = unexpectedBetweenThrowKeywordAndExpression?.raw
      layout[3] = expression.raw
      layout[4] = unexpectedAfterExpression?.raw
    }
    self.init(unchecked: raw)
  }
  
  public var unexpectedBeforeThrowKeyword: RawUnexpectedNodesSyntax? {
    layoutView.children[0].map(RawUnexpectedNodesSyntax.init(raw:))
  }
  
  public var throwKeyword: RawTokenSyntax {
    layoutView.children[1].map(RawTokenSyntax.init(raw:))!
  }
  
  public var unexpectedBetweenThrowKeywordAndExpression: RawUnexpectedNodesSyntax? {
    layoutView.children[2].map(RawUnexpectedNodesSyntax.init(raw:))
  }
  
  public var expression: RawExprSyntax {
    layoutView.children[3].map(RawExprSyntax.init(raw:))!
  }
  
  public var unexpectedAfterExpression: RawUnexpectedNodesSyntax? {
    layoutView.children[4].map(RawUnexpectedNodesSyntax.init(raw:))
  }
}

@_spi(RawSyntax)
public struct RawThrownTypeClauseSyntax: RawSyntaxNodeProtocol {
  @_spi(RawSyntax)
  public var layoutView: RawSyntaxLayoutView {
    return raw.layoutView!
  }
  
  public static func isKindOf(_ raw: RawSyntax) -> Bool {
    return raw.kind == .thrownTypeClause
  }
  
  public var raw: RawSyntax
  
  init(raw: RawSyntax) {
    precondition(Self.isKindOf(raw))
    self.raw = raw
  }
  
  private init(unchecked raw: RawSyntax) {
    self.raw = raw
  }
  
  public init?(_ other: some RawSyntaxNodeProtocol) {
    guard Self.isKindOf(other.raw) else {
      return nil
    }
    self.init(unchecked: other.raw)
  }
  
  public init(
      _ unexpectedBeforeLeftParen: RawUnexpectedNodesSyntax? = nil, 
      leftParen: RawTokenSyntax, 
      _ unexpectedBetweenLeftParenAndType: RawUnexpectedNodesSyntax? = nil, 
      type: RawTypeSyntax, 
      _ unexpectedBetweenTypeAndRightParen: RawUnexpectedNodesSyntax? = nil, 
      rightParen: RawTokenSyntax, 
      _ unexpectedAfterRightParen: RawUnexpectedNodesSyntax? = nil, 
      arena: __shared SyntaxArena
    ) {
    let raw = RawSyntax.makeLayout(
      kind: .thrownTypeClause, uninitializedCount: 7, arena: arena) { layout in
      layout.initialize(repeating: nil)
      layout[0] = unexpectedBeforeLeftParen?.raw
      layout[1] = leftParen.raw
      layout[2] = unexpectedBetweenLeftParenAndType?.raw
      layout[3] = type.raw
      layout[4] = unexpectedBetweenTypeAndRightParen?.raw
      layout[5] = rightParen.raw
      layout[6] = unexpectedAfterRightParen?.raw
    }
    self.init(unchecked: raw)
  }
  
  public var unexpectedBeforeLeftParen: RawUnexpectedNodesSyntax? {
    layoutView.children[0].map(RawUnexpectedNodesSyntax.init(raw:))
  }
  
  public var leftParen: RawTokenSyntax {
    layoutView.children[1].map(RawTokenSyntax.init(raw:))!
  }
  
  public var unexpectedBetweenLeftParenAndType: RawUnexpectedNodesSyntax? {
    layoutView.children[2].map(RawUnexpectedNodesSyntax.init(raw:))
  }
  
  public var type: RawTypeSyntax {
    layoutView.children[3].map(RawTypeSyntax.init(raw:))!
  }
  
  public var unexpectedBetweenTypeAndRightParen: RawUnexpectedNodesSyntax? {
    layoutView.children[4].map(RawUnexpectedNodesSyntax.init(raw:))
  }
  
  public var rightParen: RawTokenSyntax {
    layoutView.children[5].map(RawTokenSyntax.init(raw:))!
  }
  
  public var unexpectedAfterRightParen: RawUnexpectedNodesSyntax? {
    layoutView.children[6].map(RawUnexpectedNodesSyntax.init(raw:))
  }
}

@_spi(RawSyntax)
public struct RawTryExprSyntax: RawExprSyntaxNodeProtocol {
  @_spi(RawSyntax)
  public var layoutView: RawSyntaxLayoutView {
    return raw.layoutView!
  }
  
  public static func isKindOf(_ raw: RawSyntax) -> Bool {
    return raw.kind == .tryExpr
  }
  
  public var raw: RawSyntax
  
  init(raw: RawSyntax) {
    precondition(Self.isKindOf(raw))
    self.raw = raw
  }
  
  private init(unchecked raw: RawSyntax) {
    self.raw = raw
  }
  
  public init?(_ other: some RawSyntaxNodeProtocol) {
    guard Self.isKindOf(other.raw) else {
      return nil
    }
    self.init(unchecked: other.raw)
  }
  
  public init(
      _ unexpectedBeforeTryKeyword: RawUnexpectedNodesSyntax? = nil, 
      tryKeyword: RawTokenSyntax, 
      _ unexpectedBetweenTryKeywordAndQuestionOrExclamationMark: RawUnexpectedNodesSyntax? = nil, 
      questionOrExclamationMark: RawTokenSyntax?, 
      _ unexpectedBetweenQuestionOrExclamationMarkAndExpression: RawUnexpectedNodesSyntax? = nil, 
      expression: RawExprSyntax, 
      _ unexpectedAfterExpression: RawUnexpectedNodesSyntax? = nil, 
      arena: __shared SyntaxArena
    ) {
    let raw = RawSyntax.makeLayout(
      kind: .tryExpr, uninitializedCount: 7, arena: arena) { layout in
      layout.initialize(repeating: nil)
      layout[0] = unexpectedBeforeTryKeyword?.raw
      layout[1] = tryKeyword.raw
      layout[2] = unexpectedBetweenTryKeywordAndQuestionOrExclamationMark?.raw
      layout[3] = questionOrExclamationMark?.raw
      layout[4] = unexpectedBetweenQuestionOrExclamationMarkAndExpression?.raw
      layout[5] = expression.raw
      layout[6] = unexpectedAfterExpression?.raw
    }
    self.init(unchecked: raw)
  }
  
  public var unexpectedBeforeTryKeyword: RawUnexpectedNodesSyntax? {
    layoutView.children[0].map(RawUnexpectedNodesSyntax.init(raw:))
  }
  
  public var tryKeyword: RawTokenSyntax {
    layoutView.children[1].map(RawTokenSyntax.init(raw:))!
  }
  
  public var unexpectedBetweenTryKeywordAndQuestionOrExclamationMark: RawUnexpectedNodesSyntax? {
    layoutView.children[2].map(RawUnexpectedNodesSyntax.init(raw:))
  }
  
  public var questionOrExclamationMark: RawTokenSyntax? {
    layoutView.children[3].map(RawTokenSyntax.init(raw:))
  }
  
  public var unexpectedBetweenQuestionOrExclamationMarkAndExpression: RawUnexpectedNodesSyntax? {
    layoutView.children[4].map(RawUnexpectedNodesSyntax.init(raw:))
  }
  
  public var expression: RawExprSyntax {
    layoutView.children[5].map(RawExprSyntax.init(raw:))!
  }
  
  public var unexpectedAfterExpression: RawUnexpectedNodesSyntax? {
    layoutView.children[6].map(RawUnexpectedNodesSyntax.init(raw:))
  }
}

@_spi(RawSyntax)
public struct RawTupleExprSyntax: RawExprSyntaxNodeProtocol {
  @_spi(RawSyntax)
  public var layoutView: RawSyntaxLayoutView {
    return raw.layoutView!
  }
  
  public static func isKindOf(_ raw: RawSyntax) -> Bool {
    return raw.kind == .tupleExpr
  }
  
  public var raw: RawSyntax
  
  init(raw: RawSyntax) {
    precondition(Self.isKindOf(raw))
    self.raw = raw
  }
  
  private init(unchecked raw: RawSyntax) {
    self.raw = raw
  }
  
  public init?(_ other: some RawSyntaxNodeProtocol) {
    guard Self.isKindOf(other.raw) else {
      return nil
    }
    self.init(unchecked: other.raw)
  }
  
  public init(
      _ unexpectedBeforeLeftParen: RawUnexpectedNodesSyntax? = nil, 
      leftParen: RawTokenSyntax, 
      _ unexpectedBetweenLeftParenAndElements: RawUnexpectedNodesSyntax? = nil, 
      elements: RawLabeledExprListSyntax, 
      _ unexpectedBetweenElementsAndRightParen: RawUnexpectedNodesSyntax? = nil, 
      rightParen: RawTokenSyntax, 
      _ unexpectedAfterRightParen: RawUnexpectedNodesSyntax? = nil, 
      arena: __shared SyntaxArena
    ) {
    let raw = RawSyntax.makeLayout(
      kind: .tupleExpr, uninitializedCount: 7, arena: arena) { layout in
      layout.initialize(repeating: nil)
      layout[0] = unexpectedBeforeLeftParen?.raw
      layout[1] = leftParen.raw
      layout[2] = unexpectedBetweenLeftParenAndElements?.raw
      layout[3] = elements.raw
      layout[4] = unexpectedBetweenElementsAndRightParen?.raw
      layout[5] = rightParen.raw
      layout[6] = unexpectedAfterRightParen?.raw
    }
    self.init(unchecked: raw)
  }
  
  public var unexpectedBeforeLeftParen: RawUnexpectedNodesSyntax? {
    layoutView.children[0].map(RawUnexpectedNodesSyntax.init(raw:))
  }
  
  public var leftParen: RawTokenSyntax {
    layoutView.children[1].map(RawTokenSyntax.init(raw:))!
  }
  
  public var unexpectedBetweenLeftParenAndElements: RawUnexpectedNodesSyntax? {
    layoutView.children[2].map(RawUnexpectedNodesSyntax.init(raw:))
  }
  
  public var elements: RawLabeledExprListSyntax {
    layoutView.children[3].map(RawLabeledExprListSyntax.init(raw:))!
  }
  
  public var unexpectedBetweenElementsAndRightParen: RawUnexpectedNodesSyntax? {
    layoutView.children[4].map(RawUnexpectedNodesSyntax.init(raw:))
  }
  
  public var rightParen: RawTokenSyntax {
    layoutView.children[5].map(RawTokenSyntax.init(raw:))!
  }
  
  public var unexpectedAfterRightParen: RawUnexpectedNodesSyntax? {
    layoutView.children[6].map(RawUnexpectedNodesSyntax.init(raw:))
  }
}

@_spi(RawSyntax)
public struct RawTuplePatternElementListSyntax: RawSyntaxNodeProtocol {
  @_spi(RawSyntax)
  public var layoutView: RawSyntaxLayoutView {
    return raw.layoutView!
  }
  
  public static func isKindOf(_ raw: RawSyntax) -> Bool {
    return raw.kind == .tuplePatternElementList
  }
  
  public var raw: RawSyntax
  
  init(raw: RawSyntax) {
    precondition(Self.isKindOf(raw))
    self.raw = raw
  }
  
  private init(unchecked raw: RawSyntax) {
    self.raw = raw
  }
  
  public init?(_ other: some RawSyntaxNodeProtocol) {
    guard Self.isKindOf(other.raw) else {
      return nil
    }
    self.init(unchecked: other.raw)
  }
  
  public init(elements: [RawTuplePatternElementSyntax], arena: __shared SyntaxArena) {
    let raw = RawSyntax.makeLayout(
      kind: .tuplePatternElementList, uninitializedCount: elements.count, arena: arena) { layout in
        guard var ptr = layout.baseAddress else {
          return
        }
        for elem in elements {
          ptr.initialize(to: elem.raw)
          ptr += 1
        }
    }
    self.init(unchecked: raw)
  }
  
  public var elements: [RawTuplePatternElementSyntax] {
    layoutView.children.map {
      RawTuplePatternElementSyntax(raw: $0!)
    }
  }
}

@_spi(RawSyntax)
public struct RawTuplePatternElementSyntax: RawSyntaxNodeProtocol {
  @_spi(RawSyntax)
  public var layoutView: RawSyntaxLayoutView {
    return raw.layoutView!
  }
  
  public static func isKindOf(_ raw: RawSyntax) -> Bool {
    return raw.kind == .tuplePatternElement
  }
  
  public var raw: RawSyntax
  
  init(raw: RawSyntax) {
    precondition(Self.isKindOf(raw))
    self.raw = raw
  }
  
  private init(unchecked raw: RawSyntax) {
    self.raw = raw
  }
  
  public init?(_ other: some RawSyntaxNodeProtocol) {
    guard Self.isKindOf(other.raw) else {
      return nil
    }
    self.init(unchecked: other.raw)
  }
  
  public init(
      _ unexpectedBeforeLabel: RawUnexpectedNodesSyntax? = nil, 
      label: RawTokenSyntax?, 
      _ unexpectedBetweenLabelAndColon: RawUnexpectedNodesSyntax? = nil, 
      colon: RawTokenSyntax?, 
      _ unexpectedBetweenColonAndPattern: RawUnexpectedNodesSyntax? = nil, 
      pattern: RawPatternSyntax, 
      _ unexpectedBetweenPatternAndTrailingComma: RawUnexpectedNodesSyntax? = nil, 
      trailingComma: RawTokenSyntax?, 
      _ unexpectedAfterTrailingComma: RawUnexpectedNodesSyntax? = nil, 
      arena: __shared SyntaxArena
    ) {
    let raw = RawSyntax.makeLayout(
      kind: .tuplePatternElement, uninitializedCount: 9, arena: arena) { layout in
      layout.initialize(repeating: nil)
      layout[0] = unexpectedBeforeLabel?.raw
      layout[1] = label?.raw
      layout[2] = unexpectedBetweenLabelAndColon?.raw
      layout[3] = colon?.raw
      layout[4] = unexpectedBetweenColonAndPattern?.raw
      layout[5] = pattern.raw
      layout[6] = unexpectedBetweenPatternAndTrailingComma?.raw
      layout[7] = trailingComma?.raw
      layout[8] = unexpectedAfterTrailingComma?.raw
    }
    self.init(unchecked: raw)
  }
  
  public var unexpectedBeforeLabel: RawUnexpectedNodesSyntax? {
    layoutView.children[0].map(RawUnexpectedNodesSyntax.init(raw:))
  }
  
  public var label: RawTokenSyntax? {
    layoutView.children[1].map(RawTokenSyntax.init(raw:))
  }
  
  public var unexpectedBetweenLabelAndColon: RawUnexpectedNodesSyntax? {
    layoutView.children[2].map(RawUnexpectedNodesSyntax.init(raw:))
  }
  
  public var colon: RawTokenSyntax? {
    layoutView.children[3].map(RawTokenSyntax.init(raw:))
  }
  
  public var unexpectedBetweenColonAndPattern: RawUnexpectedNodesSyntax? {
    layoutView.children[4].map(RawUnexpectedNodesSyntax.init(raw:))
  }
  
  public var pattern: RawPatternSyntax {
    layoutView.children[5].map(RawPatternSyntax.init(raw:))!
  }
  
  public var unexpectedBetweenPatternAndTrailingComma: RawUnexpectedNodesSyntax? {
    layoutView.children[6].map(RawUnexpectedNodesSyntax.init(raw:))
  }
  
  public var trailingComma: RawTokenSyntax? {
    layoutView.children[7].map(RawTokenSyntax.init(raw:))
  }
  
  public var unexpectedAfterTrailingComma: RawUnexpectedNodesSyntax? {
    layoutView.children[8].map(RawUnexpectedNodesSyntax.init(raw:))
  }
}

@_spi(RawSyntax)
public struct RawTuplePatternSyntax: RawPatternSyntaxNodeProtocol {
  @_spi(RawSyntax)
  public var layoutView: RawSyntaxLayoutView {
    return raw.layoutView!
  }
  
  public static func isKindOf(_ raw: RawSyntax) -> Bool {
    return raw.kind == .tuplePattern
  }
  
  public var raw: RawSyntax
  
  init(raw: RawSyntax) {
    precondition(Self.isKindOf(raw))
    self.raw = raw
  }
  
  private init(unchecked raw: RawSyntax) {
    self.raw = raw
  }
  
  public init?(_ other: some RawSyntaxNodeProtocol) {
    guard Self.isKindOf(other.raw) else {
      return nil
    }
    self.init(unchecked: other.raw)
  }
  
  public init(
      _ unexpectedBeforeLeftParen: RawUnexpectedNodesSyntax? = nil, 
      leftParen: RawTokenSyntax, 
      _ unexpectedBetweenLeftParenAndElements: RawUnexpectedNodesSyntax? = nil, 
      elements: RawTuplePatternElementListSyntax, 
      _ unexpectedBetweenElementsAndRightParen: RawUnexpectedNodesSyntax? = nil, 
      rightParen: RawTokenSyntax, 
      _ unexpectedAfterRightParen: RawUnexpectedNodesSyntax? = nil, 
      arena: __shared SyntaxArena
    ) {
    let raw = RawSyntax.makeLayout(
      kind: .tuplePattern, uninitializedCount: 7, arena: arena) { layout in
      layout.initialize(repeating: nil)
      layout[0] = unexpectedBeforeLeftParen?.raw
      layout[1] = leftParen.raw
      layout[2] = unexpectedBetweenLeftParenAndElements?.raw
      layout[3] = elements.raw
      layout[4] = unexpectedBetweenElementsAndRightParen?.raw
      layout[5] = rightParen.raw
      layout[6] = unexpectedAfterRightParen?.raw
    }
    self.init(unchecked: raw)
  }
  
  public var unexpectedBeforeLeftParen: RawUnexpectedNodesSyntax? {
    layoutView.children[0].map(RawUnexpectedNodesSyntax.init(raw:))
  }
  
  public var leftParen: RawTokenSyntax {
    layoutView.children[1].map(RawTokenSyntax.init(raw:))!
  }
  
  public var unexpectedBetweenLeftParenAndElements: RawUnexpectedNodesSyntax? {
    layoutView.children[2].map(RawUnexpectedNodesSyntax.init(raw:))
  }
  
  public var elements: RawTuplePatternElementListSyntax {
    layoutView.children[3].map(RawTuplePatternElementListSyntax.init(raw:))!
  }
  
  public var unexpectedBetweenElementsAndRightParen: RawUnexpectedNodesSyntax? {
    layoutView.children[4].map(RawUnexpectedNodesSyntax.init(raw:))
  }
  
  public var rightParen: RawTokenSyntax {
    layoutView.children[5].map(RawTokenSyntax.init(raw:))!
  }
  
  public var unexpectedAfterRightParen: RawUnexpectedNodesSyntax? {
    layoutView.children[6].map(RawUnexpectedNodesSyntax.init(raw:))
  }
}

@_spi(RawSyntax)
public struct RawTupleTypeElementListSyntax: RawSyntaxNodeProtocol {
  @_spi(RawSyntax)
  public var layoutView: RawSyntaxLayoutView {
    return raw.layoutView!
  }
  
  public static func isKindOf(_ raw: RawSyntax) -> Bool {
    return raw.kind == .tupleTypeElementList
  }
  
  public var raw: RawSyntax
  
  init(raw: RawSyntax) {
    precondition(Self.isKindOf(raw))
    self.raw = raw
  }
  
  private init(unchecked raw: RawSyntax) {
    self.raw = raw
  }
  
  public init?(_ other: some RawSyntaxNodeProtocol) {
    guard Self.isKindOf(other.raw) else {
      return nil
    }
    self.init(unchecked: other.raw)
  }
  
  public init(elements: [RawTupleTypeElementSyntax], arena: __shared SyntaxArena) {
    let raw = RawSyntax.makeLayout(
      kind: .tupleTypeElementList, uninitializedCount: elements.count, arena: arena) { layout in
        guard var ptr = layout.baseAddress else {
          return
        }
        for elem in elements {
          ptr.initialize(to: elem.raw)
          ptr += 1
        }
    }
    self.init(unchecked: raw)
  }
  
  public var elements: [RawTupleTypeElementSyntax] {
    layoutView.children.map {
      RawTupleTypeElementSyntax(raw: $0!)
    }
  }
}

@_spi(RawSyntax)
public struct RawTupleTypeElementSyntax: RawSyntaxNodeProtocol {
  @_spi(RawSyntax)
  public var layoutView: RawSyntaxLayoutView {
    return raw.layoutView!
  }
  
  public static func isKindOf(_ raw: RawSyntax) -> Bool {
    return raw.kind == .tupleTypeElement
  }
  
  public var raw: RawSyntax
  
  init(raw: RawSyntax) {
    precondition(Self.isKindOf(raw))
    self.raw = raw
  }
  
  private init(unchecked raw: RawSyntax) {
    self.raw = raw
  }
  
  public init?(_ other: some RawSyntaxNodeProtocol) {
    guard Self.isKindOf(other.raw) else {
      return nil
    }
    self.init(unchecked: other.raw)
  }
  
  public init(
      _ unexpectedBeforeInoutKeyword: RawUnexpectedNodesSyntax? = nil, 
      inoutKeyword: RawTokenSyntax?, 
      _ unexpectedBetweenInoutKeywordAndFirstName: RawUnexpectedNodesSyntax? = nil, 
      firstName: RawTokenSyntax?, 
      _ unexpectedBetweenFirstNameAndSecondName: RawUnexpectedNodesSyntax? = nil, 
      secondName: RawTokenSyntax?, 
      _ unexpectedBetweenSecondNameAndColon: RawUnexpectedNodesSyntax? = nil, 
      colon: RawTokenSyntax?, 
      _ unexpectedBetweenColonAndType: RawUnexpectedNodesSyntax? = nil, 
      type: RawTypeSyntax, 
      _ unexpectedBetweenTypeAndEllipsis: RawUnexpectedNodesSyntax? = nil, 
      ellipsis: RawTokenSyntax?, 
      _ unexpectedBetweenEllipsisAndTrailingComma: RawUnexpectedNodesSyntax? = nil, 
      trailingComma: RawTokenSyntax?, 
      _ unexpectedAfterTrailingComma: RawUnexpectedNodesSyntax? = nil, 
      arena: __shared SyntaxArena
    ) {
    let raw = RawSyntax.makeLayout(
      kind: .tupleTypeElement, uninitializedCount: 15, arena: arena) { layout in
      layout.initialize(repeating: nil)
      layout[0] = unexpectedBeforeInoutKeyword?.raw
      layout[1] = inoutKeyword?.raw
      layout[2] = unexpectedBetweenInoutKeywordAndFirstName?.raw
      layout[3] = firstName?.raw
      layout[4] = unexpectedBetweenFirstNameAndSecondName?.raw
      layout[5] = secondName?.raw
      layout[6] = unexpectedBetweenSecondNameAndColon?.raw
      layout[7] = colon?.raw
      layout[8] = unexpectedBetweenColonAndType?.raw
      layout[9] = type.raw
      layout[10] = unexpectedBetweenTypeAndEllipsis?.raw
      layout[11] = ellipsis?.raw
      layout[12] = unexpectedBetweenEllipsisAndTrailingComma?.raw
      layout[13] = trailingComma?.raw
      layout[14] = unexpectedAfterTrailingComma?.raw
    }
    self.init(unchecked: raw)
  }
  
  public var unexpectedBeforeInoutKeyword: RawUnexpectedNodesSyntax? {
    layoutView.children[0].map(RawUnexpectedNodesSyntax.init(raw:))
  }
  
  public var inoutKeyword: RawTokenSyntax? {
    layoutView.children[1].map(RawTokenSyntax.init(raw:))
  }
  
  public var unexpectedBetweenInoutKeywordAndFirstName: RawUnexpectedNodesSyntax? {
    layoutView.children[2].map(RawUnexpectedNodesSyntax.init(raw:))
  }
  
  public var firstName: RawTokenSyntax? {
    layoutView.children[3].map(RawTokenSyntax.init(raw:))
  }
  
  public var unexpectedBetweenFirstNameAndSecondName: RawUnexpectedNodesSyntax? {
    layoutView.children[4].map(RawUnexpectedNodesSyntax.init(raw:))
  }
  
  public var secondName: RawTokenSyntax? {
    layoutView.children[5].map(RawTokenSyntax.init(raw:))
  }
  
  public var unexpectedBetweenSecondNameAndColon: RawUnexpectedNodesSyntax? {
    layoutView.children[6].map(RawUnexpectedNodesSyntax.init(raw:))
  }
  
  public var colon: RawTokenSyntax? {
    layoutView.children[7].map(RawTokenSyntax.init(raw:))
  }
  
  public var unexpectedBetweenColonAndType: RawUnexpectedNodesSyntax? {
    layoutView.children[8].map(RawUnexpectedNodesSyntax.init(raw:))
  }
  
  public var type: RawTypeSyntax {
    layoutView.children[9].map(RawTypeSyntax.init(raw:))!
  }
  
  public var unexpectedBetweenTypeAndEllipsis: RawUnexpectedNodesSyntax? {
    layoutView.children[10].map(RawUnexpectedNodesSyntax.init(raw:))
  }
  
  public var ellipsis: RawTokenSyntax? {
    layoutView.children[11].map(RawTokenSyntax.init(raw:))
  }
  
  public var unexpectedBetweenEllipsisAndTrailingComma: RawUnexpectedNodesSyntax? {
    layoutView.children[12].map(RawUnexpectedNodesSyntax.init(raw:))
  }
  
  public var trailingComma: RawTokenSyntax? {
    layoutView.children[13].map(RawTokenSyntax.init(raw:))
  }
  
  public var unexpectedAfterTrailingComma: RawUnexpectedNodesSyntax? {
    layoutView.children[14].map(RawUnexpectedNodesSyntax.init(raw:))
  }
}

@_spi(RawSyntax)
public struct RawTupleTypeSyntax: RawTypeSyntaxNodeProtocol {
  @_spi(RawSyntax)
  public var layoutView: RawSyntaxLayoutView {
    return raw.layoutView!
  }
  
  public static func isKindOf(_ raw: RawSyntax) -> Bool {
    return raw.kind == .tupleType
  }
  
  public var raw: RawSyntax
  
  init(raw: RawSyntax) {
    precondition(Self.isKindOf(raw))
    self.raw = raw
  }
  
  private init(unchecked raw: RawSyntax) {
    self.raw = raw
  }
  
  public init?(_ other: some RawSyntaxNodeProtocol) {
    guard Self.isKindOf(other.raw) else {
      return nil
    }
    self.init(unchecked: other.raw)
  }
  
  public init(
      _ unexpectedBeforeLeftParen: RawUnexpectedNodesSyntax? = nil, 
      leftParen: RawTokenSyntax, 
      _ unexpectedBetweenLeftParenAndElements: RawUnexpectedNodesSyntax? = nil, 
      elements: RawTupleTypeElementListSyntax, 
      _ unexpectedBetweenElementsAndRightParen: RawUnexpectedNodesSyntax? = nil, 
      rightParen: RawTokenSyntax, 
      _ unexpectedAfterRightParen: RawUnexpectedNodesSyntax? = nil, 
      arena: __shared SyntaxArena
    ) {
    let raw = RawSyntax.makeLayout(
      kind: .tupleType, uninitializedCount: 7, arena: arena) { layout in
      layout.initialize(repeating: nil)
      layout[0] = unexpectedBeforeLeftParen?.raw
      layout[1] = leftParen.raw
      layout[2] = unexpectedBetweenLeftParenAndElements?.raw
      layout[3] = elements.raw
      layout[4] = unexpectedBetweenElementsAndRightParen?.raw
      layout[5] = rightParen.raw
      layout[6] = unexpectedAfterRightParen?.raw
    }
    self.init(unchecked: raw)
  }
  
  public var unexpectedBeforeLeftParen: RawUnexpectedNodesSyntax? {
    layoutView.children[0].map(RawUnexpectedNodesSyntax.init(raw:))
  }
  
  public var leftParen: RawTokenSyntax {
    layoutView.children[1].map(RawTokenSyntax.init(raw:))!
  }
  
  public var unexpectedBetweenLeftParenAndElements: RawUnexpectedNodesSyntax? {
    layoutView.children[2].map(RawUnexpectedNodesSyntax.init(raw:))
  }
  
  public var elements: RawTupleTypeElementListSyntax {
    layoutView.children[3].map(RawTupleTypeElementListSyntax.init(raw:))!
  }
  
  public var unexpectedBetweenElementsAndRightParen: RawUnexpectedNodesSyntax? {
    layoutView.children[4].map(RawUnexpectedNodesSyntax.init(raw:))
  }
  
  public var rightParen: RawTokenSyntax {
    layoutView.children[5].map(RawTokenSyntax.init(raw:))!
  }
  
  public var unexpectedAfterRightParen: RawUnexpectedNodesSyntax? {
    layoutView.children[6].map(RawUnexpectedNodesSyntax.init(raw:))
  }
}

@_spi(RawSyntax)
public struct RawTypeAliasDeclSyntax: RawDeclSyntaxNodeProtocol {
  @_spi(RawSyntax)
  public var layoutView: RawSyntaxLayoutView {
    return raw.layoutView!
  }
  
  public static func isKindOf(_ raw: RawSyntax) -> Bool {
    return raw.kind == .typeAliasDecl
  }
  
  public var raw: RawSyntax
  
  init(raw: RawSyntax) {
    precondition(Self.isKindOf(raw))
    self.raw = raw
  }
  
  private init(unchecked raw: RawSyntax) {
    self.raw = raw
  }
  
  public init?(_ other: some RawSyntaxNodeProtocol) {
    guard Self.isKindOf(other.raw) else {
      return nil
    }
    self.init(unchecked: other.raw)
  }
  
  public init(
      _ unexpectedBeforeAttributes: RawUnexpectedNodesSyntax? = nil, 
      attributes: RawAttributeListSyntax, 
      _ unexpectedBetweenAttributesAndModifiers: RawUnexpectedNodesSyntax? = nil, 
      modifiers: RawDeclModifierListSyntax, 
      _ unexpectedBetweenModifiersAndTypealiasKeyword: RawUnexpectedNodesSyntax? = nil, 
      typealiasKeyword: RawTokenSyntax, 
      _ unexpectedBetweenTypealiasKeywordAndName: RawUnexpectedNodesSyntax? = nil, 
      name: RawTokenSyntax, 
      _ unexpectedBetweenNameAndGenericParameterClause: RawUnexpectedNodesSyntax? = nil, 
      genericParameterClause: RawGenericParameterClauseSyntax?, 
      _ unexpectedBetweenGenericParameterClauseAndInitializer: RawUnexpectedNodesSyntax? = nil, 
      initializer: RawTypeInitializerClauseSyntax, 
      _ unexpectedBetweenInitializerAndGenericWhereClause: RawUnexpectedNodesSyntax? = nil, 
      genericWhereClause: RawGenericWhereClauseSyntax?, 
      _ unexpectedAfterGenericWhereClause: RawUnexpectedNodesSyntax? = nil, 
      arena: __shared SyntaxArena
    ) {
    let raw = RawSyntax.makeLayout(
      kind: .typeAliasDecl, uninitializedCount: 15, arena: arena) { layout in
      layout.initialize(repeating: nil)
      layout[0] = unexpectedBeforeAttributes?.raw
      layout[1] = attributes.raw
      layout[2] = unexpectedBetweenAttributesAndModifiers?.raw
      layout[3] = modifiers.raw
      layout[4] = unexpectedBetweenModifiersAndTypealiasKeyword?.raw
      layout[5] = typealiasKeyword.raw
      layout[6] = unexpectedBetweenTypealiasKeywordAndName?.raw
      layout[7] = name.raw
      layout[8] = unexpectedBetweenNameAndGenericParameterClause?.raw
      layout[9] = genericParameterClause?.raw
      layout[10] = unexpectedBetweenGenericParameterClauseAndInitializer?.raw
      layout[11] = initializer.raw
      layout[12] = unexpectedBetweenInitializerAndGenericWhereClause?.raw
      layout[13] = genericWhereClause?.raw
      layout[14] = unexpectedAfterGenericWhereClause?.raw
    }
    self.init(unchecked: raw)
  }
  
  public var unexpectedBeforeAttributes: RawUnexpectedNodesSyntax? {
    layoutView.children[0].map(RawUnexpectedNodesSyntax.init(raw:))
  }
  
  public var attributes: RawAttributeListSyntax {
    layoutView.children[1].map(RawAttributeListSyntax.init(raw:))!
  }
  
  public var unexpectedBetweenAttributesAndModifiers: RawUnexpectedNodesSyntax? {
    layoutView.children[2].map(RawUnexpectedNodesSyntax.init(raw:))
  }
  
  public var modifiers: RawDeclModifierListSyntax {
    layoutView.children[3].map(RawDeclModifierListSyntax.init(raw:))!
  }
  
  public var unexpectedBetweenModifiersAndTypealiasKeyword: RawUnexpectedNodesSyntax? {
    layoutView.children[4].map(RawUnexpectedNodesSyntax.init(raw:))
  }
  
  public var typealiasKeyword: RawTokenSyntax {
    layoutView.children[5].map(RawTokenSyntax.init(raw:))!
  }
  
  public var unexpectedBetweenTypealiasKeywordAndName: RawUnexpectedNodesSyntax? {
    layoutView.children[6].map(RawUnexpectedNodesSyntax.init(raw:))
  }
  
  public var name: RawTokenSyntax {
    layoutView.children[7].map(RawTokenSyntax.init(raw:))!
  }
  
  public var unexpectedBetweenNameAndGenericParameterClause: RawUnexpectedNodesSyntax? {
    layoutView.children[8].map(RawUnexpectedNodesSyntax.init(raw:))
  }
  
  public var genericParameterClause: RawGenericParameterClauseSyntax? {
    layoutView.children[9].map(RawGenericParameterClauseSyntax.init(raw:))
  }
  
  public var unexpectedBetweenGenericParameterClauseAndInitializer: RawUnexpectedNodesSyntax? {
    layoutView.children[10].map(RawUnexpectedNodesSyntax.init(raw:))
  }
  
  public var initializer: RawTypeInitializerClauseSyntax {
    layoutView.children[11].map(RawTypeInitializerClauseSyntax.init(raw:))!
  }
  
  public var unexpectedBetweenInitializerAndGenericWhereClause: RawUnexpectedNodesSyntax? {
    layoutView.children[12].map(RawUnexpectedNodesSyntax.init(raw:))
  }
  
  public var genericWhereClause: RawGenericWhereClauseSyntax? {
    layoutView.children[13].map(RawGenericWhereClauseSyntax.init(raw:))
  }
  
  public var unexpectedAfterGenericWhereClause: RawUnexpectedNodesSyntax? {
    layoutView.children[14].map(RawUnexpectedNodesSyntax.init(raw:))
  }
}

@_spi(RawSyntax)
public struct RawTypeAnnotationSyntax: RawSyntaxNodeProtocol {
  @_spi(RawSyntax)
  public var layoutView: RawSyntaxLayoutView {
    return raw.layoutView!
  }
  
  public static func isKindOf(_ raw: RawSyntax) -> Bool {
    return raw.kind == .typeAnnotation
  }
  
  public var raw: RawSyntax
  
  init(raw: RawSyntax) {
    precondition(Self.isKindOf(raw))
    self.raw = raw
  }
  
  private init(unchecked raw: RawSyntax) {
    self.raw = raw
  }
  
  public init?(_ other: some RawSyntaxNodeProtocol) {
    guard Self.isKindOf(other.raw) else {
      return nil
    }
    self.init(unchecked: other.raw)
  }
  
  public init(
      _ unexpectedBeforeColon: RawUnexpectedNodesSyntax? = nil, 
      colon: RawTokenSyntax, 
      _ unexpectedBetweenColonAndType: RawUnexpectedNodesSyntax? = nil, 
      type: RawTypeSyntax, 
      _ unexpectedAfterType: RawUnexpectedNodesSyntax? = nil, 
      arena: __shared SyntaxArena
    ) {
    let raw = RawSyntax.makeLayout(
      kind: .typeAnnotation, uninitializedCount: 5, arena: arena) { layout in
      layout.initialize(repeating: nil)
      layout[0] = unexpectedBeforeColon?.raw
      layout[1] = colon.raw
      layout[2] = unexpectedBetweenColonAndType?.raw
      layout[3] = type.raw
      layout[4] = unexpectedAfterType?.raw
    }
    self.init(unchecked: raw)
  }
  
  public var unexpectedBeforeColon: RawUnexpectedNodesSyntax? {
    layoutView.children[0].map(RawUnexpectedNodesSyntax.init(raw:))
  }
  
  public var colon: RawTokenSyntax {
    layoutView.children[1].map(RawTokenSyntax.init(raw:))!
  }
  
  public var unexpectedBetweenColonAndType: RawUnexpectedNodesSyntax? {
    layoutView.children[2].map(RawUnexpectedNodesSyntax.init(raw:))
  }
  
  public var type: RawTypeSyntax {
    layoutView.children[3].map(RawTypeSyntax.init(raw:))!
  }
  
  public var unexpectedAfterType: RawUnexpectedNodesSyntax? {
    layoutView.children[4].map(RawUnexpectedNodesSyntax.init(raw:))
  }
}

@_spi(RawSyntax)
public struct RawTypeEffectSpecifiersSyntax: RawSyntaxNodeProtocol {
  @_spi(RawSyntax)
  public var layoutView: RawSyntaxLayoutView {
    return raw.layoutView!
  }
  
  public static func isKindOf(_ raw: RawSyntax) -> Bool {
    return raw.kind == .typeEffectSpecifiers
  }
  
  public var raw: RawSyntax
  
  init(raw: RawSyntax) {
    precondition(Self.isKindOf(raw))
    self.raw = raw
  }
  
  private init(unchecked raw: RawSyntax) {
    self.raw = raw
  }
  
  public init?(_ other: some RawSyntaxNodeProtocol) {
    guard Self.isKindOf(other.raw) else {
      return nil
    }
    self.init(unchecked: other.raw)
  }
  
  public init(
      _ unexpectedBeforeAsyncSpecifier: RawUnexpectedNodesSyntax? = nil, 
      asyncSpecifier: RawTokenSyntax?, 
      _ unexpectedBetweenAsyncSpecifierAndThrowsSpecifier: RawUnexpectedNodesSyntax? = nil, 
      throwsSpecifier: RawTokenSyntax?, 
      _ unexpectedBetweenThrowsSpecifierAndThrownType: RawUnexpectedNodesSyntax? = nil, 
      thrownType: RawThrownTypeClauseSyntax?, 
      _ unexpectedAfterThrownType: RawUnexpectedNodesSyntax? = nil, 
      arena: __shared SyntaxArena
    ) {
    let raw = RawSyntax.makeLayout(
      kind: .typeEffectSpecifiers, uninitializedCount: 7, arena: arena) { layout in
      layout.initialize(repeating: nil)
      layout[0] = unexpectedBeforeAsyncSpecifier?.raw
      layout[1] = asyncSpecifier?.raw
      layout[2] = unexpectedBetweenAsyncSpecifierAndThrowsSpecifier?.raw
      layout[3] = throwsSpecifier?.raw
      layout[4] = unexpectedBetweenThrowsSpecifierAndThrownType?.raw
      layout[5] = thrownType?.raw
      layout[6] = unexpectedAfterThrownType?.raw
    }
    self.init(unchecked: raw)
  }
  
  public var unexpectedBeforeAsyncSpecifier: RawUnexpectedNodesSyntax? {
    layoutView.children[0].map(RawUnexpectedNodesSyntax.init(raw:))
  }
  
  public var asyncSpecifier: RawTokenSyntax? {
    layoutView.children[1].map(RawTokenSyntax.init(raw:))
  }
  
  public var unexpectedBetweenAsyncSpecifierAndThrowsSpecifier: RawUnexpectedNodesSyntax? {
    layoutView.children[2].map(RawUnexpectedNodesSyntax.init(raw:))
  }
  
  public var throwsSpecifier: RawTokenSyntax? {
    layoutView.children[3].map(RawTokenSyntax.init(raw:))
  }
  
  public var unexpectedBetweenThrowsSpecifierAndThrownType: RawUnexpectedNodesSyntax? {
    layoutView.children[4].map(RawUnexpectedNodesSyntax.init(raw:))
  }
  
  public var thrownType: RawThrownTypeClauseSyntax? {
    layoutView.children[5].map(RawThrownTypeClauseSyntax.init(raw:))
  }
  
  public var unexpectedAfterThrownType: RawUnexpectedNodesSyntax? {
    layoutView.children[6].map(RawUnexpectedNodesSyntax.init(raw:))
  }
}

@_spi(RawSyntax)
public struct RawTypeExprSyntax: RawExprSyntaxNodeProtocol {
  @_spi(RawSyntax)
  public var layoutView: RawSyntaxLayoutView {
    return raw.layoutView!
  }
  
  public static func isKindOf(_ raw: RawSyntax) -> Bool {
    return raw.kind == .typeExpr
  }
  
  public var raw: RawSyntax
  
  init(raw: RawSyntax) {
    precondition(Self.isKindOf(raw))
    self.raw = raw
  }
  
  private init(unchecked raw: RawSyntax) {
    self.raw = raw
  }
  
  public init?(_ other: some RawSyntaxNodeProtocol) {
    guard Self.isKindOf(other.raw) else {
      return nil
    }
    self.init(unchecked: other.raw)
  }
  
  public init(
      _ unexpectedBeforeType: RawUnexpectedNodesSyntax? = nil, 
      type: RawTypeSyntax, 
      _ unexpectedAfterType: RawUnexpectedNodesSyntax? = nil, 
      arena: __shared SyntaxArena
    ) {
    let raw = RawSyntax.makeLayout(
      kind: .typeExpr, uninitializedCount: 3, arena: arena) { layout in
      layout.initialize(repeating: nil)
      layout[0] = unexpectedBeforeType?.raw
      layout[1] = type.raw
      layout[2] = unexpectedAfterType?.raw
    }
    self.init(unchecked: raw)
  }
  
  public var unexpectedBeforeType: RawUnexpectedNodesSyntax? {
    layoutView.children[0].map(RawUnexpectedNodesSyntax.init(raw:))
  }
  
  public var type: RawTypeSyntax {
    layoutView.children[1].map(RawTypeSyntax.init(raw:))!
  }
  
  public var unexpectedAfterType: RawUnexpectedNodesSyntax? {
    layoutView.children[2].map(RawUnexpectedNodesSyntax.init(raw:))
  }
}

@_spi(RawSyntax)
public struct RawTypeInitializerClauseSyntax: RawSyntaxNodeProtocol {
  @_spi(RawSyntax)
  public var layoutView: RawSyntaxLayoutView {
    return raw.layoutView!
  }
  
  public static func isKindOf(_ raw: RawSyntax) -> Bool {
    return raw.kind == .typeInitializerClause
  }
  
  public var raw: RawSyntax
  
  init(raw: RawSyntax) {
    precondition(Self.isKindOf(raw))
    self.raw = raw
  }
  
  private init(unchecked raw: RawSyntax) {
    self.raw = raw
  }
  
  public init?(_ other: some RawSyntaxNodeProtocol) {
    guard Self.isKindOf(other.raw) else {
      return nil
    }
    self.init(unchecked: other.raw)
  }
  
  public init(
      _ unexpectedBeforeEqual: RawUnexpectedNodesSyntax? = nil, 
      equal: RawTokenSyntax, 
      _ unexpectedBetweenEqualAndValue: RawUnexpectedNodesSyntax? = nil, 
      value: RawTypeSyntax, 
      _ unexpectedAfterValue: RawUnexpectedNodesSyntax? = nil, 
      arena: __shared SyntaxArena
    ) {
    let raw = RawSyntax.makeLayout(
      kind: .typeInitializerClause, uninitializedCount: 5, arena: arena) { layout in
      layout.initialize(repeating: nil)
      layout[0] = unexpectedBeforeEqual?.raw
      layout[1] = equal.raw
      layout[2] = unexpectedBetweenEqualAndValue?.raw
      layout[3] = value.raw
      layout[4] = unexpectedAfterValue?.raw
    }
    self.init(unchecked: raw)
  }
  
  public var unexpectedBeforeEqual: RawUnexpectedNodesSyntax? {
    layoutView.children[0].map(RawUnexpectedNodesSyntax.init(raw:))
  }
  
  public var equal: RawTokenSyntax {
    layoutView.children[1].map(RawTokenSyntax.init(raw:))!
  }
  
  public var unexpectedBetweenEqualAndValue: RawUnexpectedNodesSyntax? {
    layoutView.children[2].map(RawUnexpectedNodesSyntax.init(raw:))
  }
  
  public var value: RawTypeSyntax {
    layoutView.children[3].map(RawTypeSyntax.init(raw:))!
  }
  
  public var unexpectedAfterValue: RawUnexpectedNodesSyntax? {
    layoutView.children[4].map(RawUnexpectedNodesSyntax.init(raw:))
  }
}

@_spi(RawSyntax)
public struct RawTypeSyntax: RawTypeSyntaxNodeProtocol {
  @_spi(RawSyntax)
  public var layoutView: RawSyntaxLayoutView {
    return raw.layoutView!
  }
  
  public static func isKindOf(_ raw: RawSyntax) -> Bool {
    switch raw.kind {
    case .arrayType, .attributedType, .classRestrictionType, .compositionType, .dictionaryType, .functionType, .identifierType, .implicitlyUnwrappedOptionalType, .memberType, .metatypeType, .missingType, .namedOpaqueReturnType, .optionalType, .packElementType, .packExpansionType, .someOrAnyType, .suppressedType, .tupleType:
      return true
    default:
      return false
    }
  }
  
  public var raw: RawSyntax
  
  init(raw: RawSyntax) {
    precondition(Self.isKindOf(raw))
    self.raw = raw
  }
  
  private init(unchecked raw: RawSyntax) {
    self.raw = raw
  }
  
  public init?(_ other: some RawSyntaxNodeProtocol) {
    guard Self.isKindOf(other.raw) else {
      return nil
    }
    self.init(unchecked: other.raw)
  }
  
  public init(_ other: some RawTypeSyntaxNodeProtocol) {
    self.init(unchecked: other.raw)
  }
}

@_spi(RawSyntax)
public struct RawUnavailableFromAsyncAttributeArgumentsSyntax: RawSyntaxNodeProtocol {
  @_spi(RawSyntax)
  public var layoutView: RawSyntaxLayoutView {
    return raw.layoutView!
  }
  
  public static func isKindOf(_ raw: RawSyntax) -> Bool {
    return raw.kind == .unavailableFromAsyncAttributeArguments
  }
  
  public var raw: RawSyntax
  
  init(raw: RawSyntax) {
    precondition(Self.isKindOf(raw))
    self.raw = raw
  }
  
  private init(unchecked raw: RawSyntax) {
    self.raw = raw
  }
  
  public init?(_ other: some RawSyntaxNodeProtocol) {
    guard Self.isKindOf(other.raw) else {
      return nil
    }
    self.init(unchecked: other.raw)
  }
  
  public init(
      _ unexpectedBeforeMessageLabel: RawUnexpectedNodesSyntax? = nil, 
      messageLabel: RawTokenSyntax, 
      _ unexpectedBetweenMessageLabelAndColon: RawUnexpectedNodesSyntax? = nil, 
      colon: RawTokenSyntax, 
      _ unexpectedBetweenColonAndMessage: RawUnexpectedNodesSyntax? = nil, 
      message: RawStringLiteralExprSyntax, 
      _ unexpectedAfterMessage: RawUnexpectedNodesSyntax? = nil, 
      arena: __shared SyntaxArena
    ) {
    let raw = RawSyntax.makeLayout(
      kind: .unavailableFromAsyncAttributeArguments, uninitializedCount: 7, arena: arena) { layout in
      layout.initialize(repeating: nil)
      layout[0] = unexpectedBeforeMessageLabel?.raw
      layout[1] = messageLabel.raw
      layout[2] = unexpectedBetweenMessageLabelAndColon?.raw
      layout[3] = colon.raw
      layout[4] = unexpectedBetweenColonAndMessage?.raw
      layout[5] = message.raw
      layout[6] = unexpectedAfterMessage?.raw
    }
    self.init(unchecked: raw)
  }
  
  public var unexpectedBeforeMessageLabel: RawUnexpectedNodesSyntax? {
    layoutView.children[0].map(RawUnexpectedNodesSyntax.init(raw:))
  }
  
  public var messageLabel: RawTokenSyntax {
    layoutView.children[1].map(RawTokenSyntax.init(raw:))!
  }
  
  public var unexpectedBetweenMessageLabelAndColon: RawUnexpectedNodesSyntax? {
    layoutView.children[2].map(RawUnexpectedNodesSyntax.init(raw:))
  }
  
  public var colon: RawTokenSyntax {
    layoutView.children[3].map(RawTokenSyntax.init(raw:))!
  }
  
  public var unexpectedBetweenColonAndMessage: RawUnexpectedNodesSyntax? {
    layoutView.children[4].map(RawUnexpectedNodesSyntax.init(raw:))
  }
  
  public var message: RawStringLiteralExprSyntax {
    layoutView.children[5].map(RawStringLiteralExprSyntax.init(raw:))!
  }
  
  public var unexpectedAfterMessage: RawUnexpectedNodesSyntax? {
    layoutView.children[6].map(RawUnexpectedNodesSyntax.init(raw:))
  }
}

@_spi(RawSyntax)
public struct RawUnderscorePrivateAttributeArgumentsSyntax: RawSyntaxNodeProtocol {
  @_spi(RawSyntax)
  public var layoutView: RawSyntaxLayoutView {
    return raw.layoutView!
  }
  
  public static func isKindOf(_ raw: RawSyntax) -> Bool {
    return raw.kind == .underscorePrivateAttributeArguments
  }
  
  public var raw: RawSyntax
  
  init(raw: RawSyntax) {
    precondition(Self.isKindOf(raw))
    self.raw = raw
  }
  
  private init(unchecked raw: RawSyntax) {
    self.raw = raw
  }
  
  public init?(_ other: some RawSyntaxNodeProtocol) {
    guard Self.isKindOf(other.raw) else {
      return nil
    }
    self.init(unchecked: other.raw)
  }
  
  public init(
      _ unexpectedBeforeSourceFileLabel: RawUnexpectedNodesSyntax? = nil, 
      sourceFileLabel: RawTokenSyntax, 
      _ unexpectedBetweenSourceFileLabelAndColon: RawUnexpectedNodesSyntax? = nil, 
      colon: RawTokenSyntax, 
      _ unexpectedBetweenColonAndFilename: RawUnexpectedNodesSyntax? = nil, 
      filename: RawStringLiteralExprSyntax, 
      _ unexpectedAfterFilename: RawUnexpectedNodesSyntax? = nil, 
      arena: __shared SyntaxArena
    ) {
    let raw = RawSyntax.makeLayout(
      kind: .underscorePrivateAttributeArguments, uninitializedCount: 7, arena: arena) { layout in
      layout.initialize(repeating: nil)
      layout[0] = unexpectedBeforeSourceFileLabel?.raw
      layout[1] = sourceFileLabel.raw
      layout[2] = unexpectedBetweenSourceFileLabelAndColon?.raw
      layout[3] = colon.raw
      layout[4] = unexpectedBetweenColonAndFilename?.raw
      layout[5] = filename.raw
      layout[6] = unexpectedAfterFilename?.raw
    }
    self.init(unchecked: raw)
  }
  
  public var unexpectedBeforeSourceFileLabel: RawUnexpectedNodesSyntax? {
    layoutView.children[0].map(RawUnexpectedNodesSyntax.init(raw:))
  }
  
  public var sourceFileLabel: RawTokenSyntax {
    layoutView.children[1].map(RawTokenSyntax.init(raw:))!
  }
  
  public var unexpectedBetweenSourceFileLabelAndColon: RawUnexpectedNodesSyntax? {
    layoutView.children[2].map(RawUnexpectedNodesSyntax.init(raw:))
  }
  
  public var colon: RawTokenSyntax {
    layoutView.children[3].map(RawTokenSyntax.init(raw:))!
  }
  
  public var unexpectedBetweenColonAndFilename: RawUnexpectedNodesSyntax? {
    layoutView.children[4].map(RawUnexpectedNodesSyntax.init(raw:))
  }
  
  public var filename: RawStringLiteralExprSyntax {
    layoutView.children[5].map(RawStringLiteralExprSyntax.init(raw:))!
  }
  
  public var unexpectedAfterFilename: RawUnexpectedNodesSyntax? {
    layoutView.children[6].map(RawUnexpectedNodesSyntax.init(raw:))
  }
}

@_spi(RawSyntax)
public struct RawUnexpectedNodesSyntax: RawSyntaxNodeProtocol {
  @_spi(RawSyntax)
  public var layoutView: RawSyntaxLayoutView {
    return raw.layoutView!
  }
  
  public static func isKindOf(_ raw: RawSyntax) -> Bool {
    return raw.kind == .unexpectedNodes
  }
  
  public var raw: RawSyntax
  
  init(raw: RawSyntax) {
    precondition(Self.isKindOf(raw))
    self.raw = raw
  }
  
  private init(unchecked raw: RawSyntax) {
    self.raw = raw
  }
  
  public init?(_ other: some RawSyntaxNodeProtocol) {
    guard Self.isKindOf(other.raw) else {
      return nil
    }
    self.init(unchecked: other.raw)
  }
  
  public init(elements: [RawSyntax], arena: __shared SyntaxArena) {
    let raw = RawSyntax.makeLayout(
      kind: .unexpectedNodes, uninitializedCount: elements.count, arena: arena) { layout in
        guard var ptr = layout.baseAddress else {
          return
        }
        for elem in elements {
          ptr.initialize(to: elem.raw)
          ptr += 1
        }
    }
    self.init(unchecked: raw)
  }
  
  public var elements: [RawSyntax] {
    layoutView.children.map {
      RawSyntax(raw: $0!)
    }
  }
}

@_spi(RawSyntax)
public struct RawUnresolvedAsExprSyntax: RawExprSyntaxNodeProtocol {
  @_spi(RawSyntax)
  public var layoutView: RawSyntaxLayoutView {
    return raw.layoutView!
  }
  
  public static func isKindOf(_ raw: RawSyntax) -> Bool {
    return raw.kind == .unresolvedAsExpr
  }
  
  public var raw: RawSyntax
  
  init(raw: RawSyntax) {
    precondition(Self.isKindOf(raw))
    self.raw = raw
  }
  
  private init(unchecked raw: RawSyntax) {
    self.raw = raw
  }
  
  public init?(_ other: some RawSyntaxNodeProtocol) {
    guard Self.isKindOf(other.raw) else {
      return nil
    }
    self.init(unchecked: other.raw)
  }
  
  public init(
      _ unexpectedBeforeAsKeyword: RawUnexpectedNodesSyntax? = nil, 
      asKeyword: RawTokenSyntax, 
      _ unexpectedBetweenAsKeywordAndQuestionOrExclamationMark: RawUnexpectedNodesSyntax? = nil, 
      questionOrExclamationMark: RawTokenSyntax?, 
      _ unexpectedAfterQuestionOrExclamationMark: RawUnexpectedNodesSyntax? = nil, 
      arena: __shared SyntaxArena
    ) {
    let raw = RawSyntax.makeLayout(
      kind: .unresolvedAsExpr, uninitializedCount: 5, arena: arena) { layout in
      layout.initialize(repeating: nil)
      layout[0] = unexpectedBeforeAsKeyword?.raw
      layout[1] = asKeyword.raw
      layout[2] = unexpectedBetweenAsKeywordAndQuestionOrExclamationMark?.raw
      layout[3] = questionOrExclamationMark?.raw
      layout[4] = unexpectedAfterQuestionOrExclamationMark?.raw
    }
    self.init(unchecked: raw)
  }
  
  public var unexpectedBeforeAsKeyword: RawUnexpectedNodesSyntax? {
    layoutView.children[0].map(RawUnexpectedNodesSyntax.init(raw:))
  }
  
  public var asKeyword: RawTokenSyntax {
    layoutView.children[1].map(RawTokenSyntax.init(raw:))!
  }
  
  public var unexpectedBetweenAsKeywordAndQuestionOrExclamationMark: RawUnexpectedNodesSyntax? {
    layoutView.children[2].map(RawUnexpectedNodesSyntax.init(raw:))
  }
  
  public var questionOrExclamationMark: RawTokenSyntax? {
    layoutView.children[3].map(RawTokenSyntax.init(raw:))
  }
  
  public var unexpectedAfterQuestionOrExclamationMark: RawUnexpectedNodesSyntax? {
    layoutView.children[4].map(RawUnexpectedNodesSyntax.init(raw:))
  }
}

@_spi(RawSyntax)
public struct RawUnresolvedIsExprSyntax: RawExprSyntaxNodeProtocol {
  @_spi(RawSyntax)
  public var layoutView: RawSyntaxLayoutView {
    return raw.layoutView!
  }
  
  public static func isKindOf(_ raw: RawSyntax) -> Bool {
    return raw.kind == .unresolvedIsExpr
  }
  
  public var raw: RawSyntax
  
  init(raw: RawSyntax) {
    precondition(Self.isKindOf(raw))
    self.raw = raw
  }
  
  private init(unchecked raw: RawSyntax) {
    self.raw = raw
  }
  
  public init?(_ other: some RawSyntaxNodeProtocol) {
    guard Self.isKindOf(other.raw) else {
      return nil
    }
    self.init(unchecked: other.raw)
  }
  
  public init(
      _ unexpectedBeforeIsKeyword: RawUnexpectedNodesSyntax? = nil, 
      isKeyword: RawTokenSyntax, 
      _ unexpectedAfterIsKeyword: RawUnexpectedNodesSyntax? = nil, 
      arena: __shared SyntaxArena
    ) {
    let raw = RawSyntax.makeLayout(
      kind: .unresolvedIsExpr, uninitializedCount: 3, arena: arena) { layout in
      layout.initialize(repeating: nil)
      layout[0] = unexpectedBeforeIsKeyword?.raw
      layout[1] = isKeyword.raw
      layout[2] = unexpectedAfterIsKeyword?.raw
    }
    self.init(unchecked: raw)
  }
  
  public var unexpectedBeforeIsKeyword: RawUnexpectedNodesSyntax? {
    layoutView.children[0].map(RawUnexpectedNodesSyntax.init(raw:))
  }
  
  public var isKeyword: RawTokenSyntax {
    layoutView.children[1].map(RawTokenSyntax.init(raw:))!
  }
  
  public var unexpectedAfterIsKeyword: RawUnexpectedNodesSyntax? {
    layoutView.children[2].map(RawUnexpectedNodesSyntax.init(raw:))
  }
}

@_spi(RawSyntax)
public struct RawUnresolvedTernaryExprSyntax: RawExprSyntaxNodeProtocol {
  @_spi(RawSyntax)
  public var layoutView: RawSyntaxLayoutView {
    return raw.layoutView!
  }
  
  public static func isKindOf(_ raw: RawSyntax) -> Bool {
    return raw.kind == .unresolvedTernaryExpr
  }
  
  public var raw: RawSyntax
  
  init(raw: RawSyntax) {
    precondition(Self.isKindOf(raw))
    self.raw = raw
  }
  
  private init(unchecked raw: RawSyntax) {
    self.raw = raw
  }
  
  public init?(_ other: some RawSyntaxNodeProtocol) {
    guard Self.isKindOf(other.raw) else {
      return nil
    }
    self.init(unchecked: other.raw)
  }
  
  public init(
      _ unexpectedBeforeQuestionMark: RawUnexpectedNodesSyntax? = nil, 
      questionMark: RawTokenSyntax, 
      _ unexpectedBetweenQuestionMarkAndThenExpression: RawUnexpectedNodesSyntax? = nil, 
      thenExpression: RawExprSyntax, 
      _ unexpectedBetweenThenExpressionAndColon: RawUnexpectedNodesSyntax? = nil, 
      colon: RawTokenSyntax, 
      _ unexpectedAfterColon: RawUnexpectedNodesSyntax? = nil, 
      arena: __shared SyntaxArena
    ) {
    let raw = RawSyntax.makeLayout(
      kind: .unresolvedTernaryExpr, uninitializedCount: 7, arena: arena) { layout in
      layout.initialize(repeating: nil)
      layout[0] = unexpectedBeforeQuestionMark?.raw
      layout[1] = questionMark.raw
      layout[2] = unexpectedBetweenQuestionMarkAndThenExpression?.raw
      layout[3] = thenExpression.raw
      layout[4] = unexpectedBetweenThenExpressionAndColon?.raw
      layout[5] = colon.raw
      layout[6] = unexpectedAfterColon?.raw
    }
    self.init(unchecked: raw)
  }
  
  public var unexpectedBeforeQuestionMark: RawUnexpectedNodesSyntax? {
    layoutView.children[0].map(RawUnexpectedNodesSyntax.init(raw:))
  }
  
  public var questionMark: RawTokenSyntax {
    layoutView.children[1].map(RawTokenSyntax.init(raw:))!
  }
  
  public var unexpectedBetweenQuestionMarkAndThenExpression: RawUnexpectedNodesSyntax? {
    layoutView.children[2].map(RawUnexpectedNodesSyntax.init(raw:))
  }
  
  public var thenExpression: RawExprSyntax {
    layoutView.children[3].map(RawExprSyntax.init(raw:))!
  }
  
  public var unexpectedBetweenThenExpressionAndColon: RawUnexpectedNodesSyntax? {
    layoutView.children[4].map(RawUnexpectedNodesSyntax.init(raw:))
  }
  
  public var colon: RawTokenSyntax {
    layoutView.children[5].map(RawTokenSyntax.init(raw:))!
  }
  
  public var unexpectedAfterColon: RawUnexpectedNodesSyntax? {
    layoutView.children[6].map(RawUnexpectedNodesSyntax.init(raw:))
  }
}

@_spi(RawSyntax)
public struct RawValueBindingPatternSyntax: RawPatternSyntaxNodeProtocol {
  @_spi(RawSyntax)
  public var layoutView: RawSyntaxLayoutView {
    return raw.layoutView!
  }
  
  public static func isKindOf(_ raw: RawSyntax) -> Bool {
    return raw.kind == .valueBindingPattern
  }
  
  public var raw: RawSyntax
  
  init(raw: RawSyntax) {
    precondition(Self.isKindOf(raw))
    self.raw = raw
  }
  
  private init(unchecked raw: RawSyntax) {
    self.raw = raw
  }
  
  public init?(_ other: some RawSyntaxNodeProtocol) {
    guard Self.isKindOf(other.raw) else {
      return nil
    }
    self.init(unchecked: other.raw)
  }
  
  public init(
      _ unexpectedBeforeBindingSpecifier: RawUnexpectedNodesSyntax? = nil, 
      bindingSpecifier: RawTokenSyntax, 
      _ unexpectedBetweenBindingSpecifierAndPattern: RawUnexpectedNodesSyntax? = nil, 
      pattern: RawPatternSyntax, 
      _ unexpectedAfterPattern: RawUnexpectedNodesSyntax? = nil, 
      arena: __shared SyntaxArena
    ) {
    let raw = RawSyntax.makeLayout(
      kind: .valueBindingPattern, uninitializedCount: 5, arena: arena) { layout in
      layout.initialize(repeating: nil)
      layout[0] = unexpectedBeforeBindingSpecifier?.raw
      layout[1] = bindingSpecifier.raw
      layout[2] = unexpectedBetweenBindingSpecifierAndPattern?.raw
      layout[3] = pattern.raw
      layout[4] = unexpectedAfterPattern?.raw
    }
    self.init(unchecked: raw)
  }
  
  public var unexpectedBeforeBindingSpecifier: RawUnexpectedNodesSyntax? {
    layoutView.children[0].map(RawUnexpectedNodesSyntax.init(raw:))
  }
  
  public var bindingSpecifier: RawTokenSyntax {
    layoutView.children[1].map(RawTokenSyntax.init(raw:))!
  }
  
  public var unexpectedBetweenBindingSpecifierAndPattern: RawUnexpectedNodesSyntax? {
    layoutView.children[2].map(RawUnexpectedNodesSyntax.init(raw:))
  }
  
  public var pattern: RawPatternSyntax {
    layoutView.children[3].map(RawPatternSyntax.init(raw:))!
  }
  
  public var unexpectedAfterPattern: RawUnexpectedNodesSyntax? {
    layoutView.children[4].map(RawUnexpectedNodesSyntax.init(raw:))
  }
}

@_spi(RawSyntax)
public struct RawVariableDeclSyntax: RawDeclSyntaxNodeProtocol {
  @_spi(RawSyntax)
  public var layoutView: RawSyntaxLayoutView {
    return raw.layoutView!
  }
  
  public static func isKindOf(_ raw: RawSyntax) -> Bool {
    return raw.kind == .variableDecl
  }
  
  public var raw: RawSyntax
  
  init(raw: RawSyntax) {
    precondition(Self.isKindOf(raw))
    self.raw = raw
  }
  
  private init(unchecked raw: RawSyntax) {
    self.raw = raw
  }
  
  public init?(_ other: some RawSyntaxNodeProtocol) {
    guard Self.isKindOf(other.raw) else {
      return nil
    }
    self.init(unchecked: other.raw)
  }
  
  public init(
      _ unexpectedBeforeAttributes: RawUnexpectedNodesSyntax? = nil, 
      attributes: RawAttributeListSyntax, 
      _ unexpectedBetweenAttributesAndModifiers: RawUnexpectedNodesSyntax? = nil, 
      modifiers: RawDeclModifierListSyntax, 
      _ unexpectedBetweenModifiersAndBindingSpecifier: RawUnexpectedNodesSyntax? = nil, 
      bindingSpecifier: RawTokenSyntax, 
      _ unexpectedBetweenBindingSpecifierAndBindings: RawUnexpectedNodesSyntax? = nil, 
      bindings: RawPatternBindingListSyntax, 
      _ unexpectedAfterBindings: RawUnexpectedNodesSyntax? = nil, 
      arena: __shared SyntaxArena
    ) {
    let raw = RawSyntax.makeLayout(
      kind: .variableDecl, uninitializedCount: 9, arena: arena) { layout in
      layout.initialize(repeating: nil)
      layout[0] = unexpectedBeforeAttributes?.raw
      layout[1] = attributes.raw
      layout[2] = unexpectedBetweenAttributesAndModifiers?.raw
      layout[3] = modifiers.raw
      layout[4] = unexpectedBetweenModifiersAndBindingSpecifier?.raw
      layout[5] = bindingSpecifier.raw
      layout[6] = unexpectedBetweenBindingSpecifierAndBindings?.raw
      layout[7] = bindings.raw
      layout[8] = unexpectedAfterBindings?.raw
    }
    self.init(unchecked: raw)
  }
  
  public var unexpectedBeforeAttributes: RawUnexpectedNodesSyntax? {
    layoutView.children[0].map(RawUnexpectedNodesSyntax.init(raw:))
  }
  
  public var attributes: RawAttributeListSyntax {
    layoutView.children[1].map(RawAttributeListSyntax.init(raw:))!
  }
  
  public var unexpectedBetweenAttributesAndModifiers: RawUnexpectedNodesSyntax? {
    layoutView.children[2].map(RawUnexpectedNodesSyntax.init(raw:))
  }
  
  public var modifiers: RawDeclModifierListSyntax {
    layoutView.children[3].map(RawDeclModifierListSyntax.init(raw:))!
  }
  
  public var unexpectedBetweenModifiersAndBindingSpecifier: RawUnexpectedNodesSyntax? {
    layoutView.children[4].map(RawUnexpectedNodesSyntax.init(raw:))
  }
  
  public var bindingSpecifier: RawTokenSyntax {
    layoutView.children[5].map(RawTokenSyntax.init(raw:))!
  }
  
  public var unexpectedBetweenBindingSpecifierAndBindings: RawUnexpectedNodesSyntax? {
    layoutView.children[6].map(RawUnexpectedNodesSyntax.init(raw:))
  }
  
  public var bindings: RawPatternBindingListSyntax {
    layoutView.children[7].map(RawPatternBindingListSyntax.init(raw:))!
  }
  
  public var unexpectedAfterBindings: RawUnexpectedNodesSyntax? {
    layoutView.children[8].map(RawUnexpectedNodesSyntax.init(raw:))
  }
}

@_spi(RawSyntax)
public struct RawVersionComponentListSyntax: RawSyntaxNodeProtocol {
  @_spi(RawSyntax)
  public var layoutView: RawSyntaxLayoutView {
    return raw.layoutView!
  }
  
  public static func isKindOf(_ raw: RawSyntax) -> Bool {
    return raw.kind == .versionComponentList
  }
  
  public var raw: RawSyntax
  
  init(raw: RawSyntax) {
    precondition(Self.isKindOf(raw))
    self.raw = raw
  }
  
  private init(unchecked raw: RawSyntax) {
    self.raw = raw
  }
  
  public init?(_ other: some RawSyntaxNodeProtocol) {
    guard Self.isKindOf(other.raw) else {
      return nil
    }
    self.init(unchecked: other.raw)
  }
  
  public init(elements: [RawVersionComponentSyntax], arena: __shared SyntaxArena) {
    let raw = RawSyntax.makeLayout(
      kind: .versionComponentList, uninitializedCount: elements.count, arena: arena) { layout in
        guard var ptr = layout.baseAddress else {
          return
        }
        for elem in elements {
          ptr.initialize(to: elem.raw)
          ptr += 1
        }
    }
    self.init(unchecked: raw)
  }
  
  public var elements: [RawVersionComponentSyntax] {
    layoutView.children.map {
      RawVersionComponentSyntax(raw: $0!)
    }
  }
}

@_spi(RawSyntax)
public struct RawVersionComponentSyntax: RawSyntaxNodeProtocol {
  @_spi(RawSyntax)
  public var layoutView: RawSyntaxLayoutView {
    return raw.layoutView!
  }
  
  public static func isKindOf(_ raw: RawSyntax) -> Bool {
    return raw.kind == .versionComponent
  }
  
  public var raw: RawSyntax
  
  init(raw: RawSyntax) {
    precondition(Self.isKindOf(raw))
    self.raw = raw
  }
  
  private init(unchecked raw: RawSyntax) {
    self.raw = raw
  }
  
  public init?(_ other: some RawSyntaxNodeProtocol) {
    guard Self.isKindOf(other.raw) else {
      return nil
    }
    self.init(unchecked: other.raw)
  }
  
  public init(
      _ unexpectedBeforePeriod: RawUnexpectedNodesSyntax? = nil, 
      period: RawTokenSyntax, 
      _ unexpectedBetweenPeriodAndNumber: RawUnexpectedNodesSyntax? = nil, 
      number: RawTokenSyntax, 
      _ unexpectedAfterNumber: RawUnexpectedNodesSyntax? = nil, 
      arena: __shared SyntaxArena
    ) {
    let raw = RawSyntax.makeLayout(
      kind: .versionComponent, uninitializedCount: 5, arena: arena) { layout in
      layout.initialize(repeating: nil)
      layout[0] = unexpectedBeforePeriod?.raw
      layout[1] = period.raw
      layout[2] = unexpectedBetweenPeriodAndNumber?.raw
      layout[3] = number.raw
      layout[4] = unexpectedAfterNumber?.raw
    }
    self.init(unchecked: raw)
  }
  
  public var unexpectedBeforePeriod: RawUnexpectedNodesSyntax? {
    layoutView.children[0].map(RawUnexpectedNodesSyntax.init(raw:))
  }
  
  public var period: RawTokenSyntax {
    layoutView.children[1].map(RawTokenSyntax.init(raw:))!
  }
  
  public var unexpectedBetweenPeriodAndNumber: RawUnexpectedNodesSyntax? {
    layoutView.children[2].map(RawUnexpectedNodesSyntax.init(raw:))
  }
  
  public var number: RawTokenSyntax {
    layoutView.children[3].map(RawTokenSyntax.init(raw:))!
  }
  
  public var unexpectedAfterNumber: RawUnexpectedNodesSyntax? {
    layoutView.children[4].map(RawUnexpectedNodesSyntax.init(raw:))
  }
}

@_spi(RawSyntax)
public struct RawVersionTupleSyntax: RawSyntaxNodeProtocol {
  @_spi(RawSyntax)
  public var layoutView: RawSyntaxLayoutView {
    return raw.layoutView!
  }
  
  public static func isKindOf(_ raw: RawSyntax) -> Bool {
    return raw.kind == .versionTuple
  }
  
  public var raw: RawSyntax
  
  init(raw: RawSyntax) {
    precondition(Self.isKindOf(raw))
    self.raw = raw
  }
  
  private init(unchecked raw: RawSyntax) {
    self.raw = raw
  }
  
  public init?(_ other: some RawSyntaxNodeProtocol) {
    guard Self.isKindOf(other.raw) else {
      return nil
    }
    self.init(unchecked: other.raw)
  }
  
  public init(
      _ unexpectedBeforeMajor: RawUnexpectedNodesSyntax? = nil, 
      major: RawTokenSyntax, 
      _ unexpectedBetweenMajorAndComponents: RawUnexpectedNodesSyntax? = nil, 
      components: RawVersionComponentListSyntax, 
      _ unexpectedAfterComponents: RawUnexpectedNodesSyntax? = nil, 
      arena: __shared SyntaxArena
    ) {
    let raw = RawSyntax.makeLayout(
      kind: .versionTuple, uninitializedCount: 5, arena: arena) { layout in
      layout.initialize(repeating: nil)
      layout[0] = unexpectedBeforeMajor?.raw
      layout[1] = major.raw
      layout[2] = unexpectedBetweenMajorAndComponents?.raw
      layout[3] = components.raw
      layout[4] = unexpectedAfterComponents?.raw
    }
    self.init(unchecked: raw)
  }
  
  public var unexpectedBeforeMajor: RawUnexpectedNodesSyntax? {
    layoutView.children[0].map(RawUnexpectedNodesSyntax.init(raw:))
  }
  
  public var major: RawTokenSyntax {
    layoutView.children[1].map(RawTokenSyntax.init(raw:))!
  }
  
  public var unexpectedBetweenMajorAndComponents: RawUnexpectedNodesSyntax? {
    layoutView.children[2].map(RawUnexpectedNodesSyntax.init(raw:))
  }
  
  public var components: RawVersionComponentListSyntax {
    layoutView.children[3].map(RawVersionComponentListSyntax.init(raw:))!
  }
  
  public var unexpectedAfterComponents: RawUnexpectedNodesSyntax? {
    layoutView.children[4].map(RawUnexpectedNodesSyntax.init(raw:))
  }
}

@_spi(RawSyntax)
public struct RawWhereClauseSyntax: RawSyntaxNodeProtocol {
  @_spi(RawSyntax)
  public var layoutView: RawSyntaxLayoutView {
    return raw.layoutView!
  }
  
  public static func isKindOf(_ raw: RawSyntax) -> Bool {
    return raw.kind == .whereClause
  }
  
  public var raw: RawSyntax
  
  init(raw: RawSyntax) {
    precondition(Self.isKindOf(raw))
    self.raw = raw
  }
  
  private init(unchecked raw: RawSyntax) {
    self.raw = raw
  }
  
  public init?(_ other: some RawSyntaxNodeProtocol) {
    guard Self.isKindOf(other.raw) else {
      return nil
    }
    self.init(unchecked: other.raw)
  }
  
  public init(
      _ unexpectedBeforeWhereKeyword: RawUnexpectedNodesSyntax? = nil, 
      whereKeyword: RawTokenSyntax, 
      _ unexpectedBetweenWhereKeywordAndCondition: RawUnexpectedNodesSyntax? = nil, 
      condition: RawExprSyntax, 
      _ unexpectedAfterCondition: RawUnexpectedNodesSyntax? = nil, 
      arena: __shared SyntaxArena
    ) {
    let raw = RawSyntax.makeLayout(
      kind: .whereClause, uninitializedCount: 5, arena: arena) { layout in
      layout.initialize(repeating: nil)
      layout[0] = unexpectedBeforeWhereKeyword?.raw
      layout[1] = whereKeyword.raw
      layout[2] = unexpectedBetweenWhereKeywordAndCondition?.raw
      layout[3] = condition.raw
      layout[4] = unexpectedAfterCondition?.raw
    }
    self.init(unchecked: raw)
  }
  
  public var unexpectedBeforeWhereKeyword: RawUnexpectedNodesSyntax? {
    layoutView.children[0].map(RawUnexpectedNodesSyntax.init(raw:))
  }
  
  public var whereKeyword: RawTokenSyntax {
    layoutView.children[1].map(RawTokenSyntax.init(raw:))!
  }
  
  public var unexpectedBetweenWhereKeywordAndCondition: RawUnexpectedNodesSyntax? {
    layoutView.children[2].map(RawUnexpectedNodesSyntax.init(raw:))
  }
  
  public var condition: RawExprSyntax {
    layoutView.children[3].map(RawExprSyntax.init(raw:))!
  }
  
  public var unexpectedAfterCondition: RawUnexpectedNodesSyntax? {
    layoutView.children[4].map(RawUnexpectedNodesSyntax.init(raw:))
  }
}

@_spi(RawSyntax)
public struct RawWhileStmtSyntax: RawStmtSyntaxNodeProtocol {
  @_spi(RawSyntax)
  public var layoutView: RawSyntaxLayoutView {
    return raw.layoutView!
  }
  
  public static func isKindOf(_ raw: RawSyntax) -> Bool {
    return raw.kind == .whileStmt
  }
  
  public var raw: RawSyntax
  
  init(raw: RawSyntax) {
    precondition(Self.isKindOf(raw))
    self.raw = raw
  }
  
  private init(unchecked raw: RawSyntax) {
    self.raw = raw
  }
  
  public init?(_ other: some RawSyntaxNodeProtocol) {
    guard Self.isKindOf(other.raw) else {
      return nil
    }
    self.init(unchecked: other.raw)
  }
  
  public init(
      _ unexpectedBeforeWhileKeyword: RawUnexpectedNodesSyntax? = nil, 
      whileKeyword: RawTokenSyntax, 
      _ unexpectedBetweenWhileKeywordAndConditions: RawUnexpectedNodesSyntax? = nil, 
      conditions: RawConditionElementListSyntax, 
      _ unexpectedBetweenConditionsAndBody: RawUnexpectedNodesSyntax? = nil, 
      body: RawCodeBlockSyntax, 
      _ unexpectedAfterBody: RawUnexpectedNodesSyntax? = nil, 
      arena: __shared SyntaxArena
    ) {
    let raw = RawSyntax.makeLayout(
      kind: .whileStmt, uninitializedCount: 7, arena: arena) { layout in
      layout.initialize(repeating: nil)
      layout[0] = unexpectedBeforeWhileKeyword?.raw
      layout[1] = whileKeyword.raw
      layout[2] = unexpectedBetweenWhileKeywordAndConditions?.raw
      layout[3] = conditions.raw
      layout[4] = unexpectedBetweenConditionsAndBody?.raw
      layout[5] = body.raw
      layout[6] = unexpectedAfterBody?.raw
    }
    self.init(unchecked: raw)
  }
  
  public var unexpectedBeforeWhileKeyword: RawUnexpectedNodesSyntax? {
    layoutView.children[0].map(RawUnexpectedNodesSyntax.init(raw:))
  }
  
  public var whileKeyword: RawTokenSyntax {
    layoutView.children[1].map(RawTokenSyntax.init(raw:))!
  }
  
  public var unexpectedBetweenWhileKeywordAndConditions: RawUnexpectedNodesSyntax? {
    layoutView.children[2].map(RawUnexpectedNodesSyntax.init(raw:))
  }
  
  public var conditions: RawConditionElementListSyntax {
    layoutView.children[3].map(RawConditionElementListSyntax.init(raw:))!
  }
  
  public var unexpectedBetweenConditionsAndBody: RawUnexpectedNodesSyntax? {
    layoutView.children[4].map(RawUnexpectedNodesSyntax.init(raw:))
  }
  
  public var body: RawCodeBlockSyntax {
    layoutView.children[5].map(RawCodeBlockSyntax.init(raw:))!
  }
  
  public var unexpectedAfterBody: RawUnexpectedNodesSyntax? {
    layoutView.children[6].map(RawUnexpectedNodesSyntax.init(raw:))
  }
}

@_spi(RawSyntax)
public struct RawWildcardPatternSyntax: RawPatternSyntaxNodeProtocol {
  @_spi(RawSyntax)
  public var layoutView: RawSyntaxLayoutView {
    return raw.layoutView!
  }
  
  public static func isKindOf(_ raw: RawSyntax) -> Bool {
    return raw.kind == .wildcardPattern
  }
  
  public var raw: RawSyntax
  
  init(raw: RawSyntax) {
    precondition(Self.isKindOf(raw))
    self.raw = raw
  }
  
  private init(unchecked raw: RawSyntax) {
    self.raw = raw
  }
  
  public init?(_ other: some RawSyntaxNodeProtocol) {
    guard Self.isKindOf(other.raw) else {
      return nil
    }
    self.init(unchecked: other.raw)
  }
  
  public init(
      _ unexpectedBeforeWildcard: RawUnexpectedNodesSyntax? = nil, 
      wildcard: RawTokenSyntax, 
      _ unexpectedBetweenWildcardAndTypeAnnotation: RawUnexpectedNodesSyntax? = nil, 
      typeAnnotation: RawTypeAnnotationSyntax?, 
      _ unexpectedAfterTypeAnnotation: RawUnexpectedNodesSyntax? = nil, 
      arena: __shared SyntaxArena
    ) {
    let raw = RawSyntax.makeLayout(
      kind: .wildcardPattern, uninitializedCount: 5, arena: arena) { layout in
      layout.initialize(repeating: nil)
      layout[0] = unexpectedBeforeWildcard?.raw
      layout[1] = wildcard.raw
      layout[2] = unexpectedBetweenWildcardAndTypeAnnotation?.raw
      layout[3] = typeAnnotation?.raw
      layout[4] = unexpectedAfterTypeAnnotation?.raw
    }
    self.init(unchecked: raw)
  }
  
  public var unexpectedBeforeWildcard: RawUnexpectedNodesSyntax? {
    layoutView.children[0].map(RawUnexpectedNodesSyntax.init(raw:))
  }
  
  public var wildcard: RawTokenSyntax {
    layoutView.children[1].map(RawTokenSyntax.init(raw:))!
  }
  
  public var unexpectedBetweenWildcardAndTypeAnnotation: RawUnexpectedNodesSyntax? {
    layoutView.children[2].map(RawUnexpectedNodesSyntax.init(raw:))
  }
  
  public var typeAnnotation: RawTypeAnnotationSyntax? {
    layoutView.children[3].map(RawTypeAnnotationSyntax.init(raw:))
  }
  
  public var unexpectedAfterTypeAnnotation: RawUnexpectedNodesSyntax? {
    layoutView.children[4].map(RawUnexpectedNodesSyntax.init(raw:))
  }
}

@_spi(RawSyntax)
public struct RawYieldStmtSyntax: RawStmtSyntaxNodeProtocol {
  public enum YieldedExpressions: RawSyntaxNodeProtocol {
    case `multiple`(RawYieldedExpressionsClauseSyntax)
    case `single`(RawExprSyntax)
    
    public static func isKindOf(_ raw: RawSyntax) -> Bool {
      return RawYieldedExpressionsClauseSyntax.isKindOf(raw) || RawExprSyntax.isKindOf(raw)
    }
    
    public var raw: RawSyntax {
      switch self {
      case .multiple(let node):
        return node.raw
      case .single(let node):
        return node.raw
      }
    }
    
    public init?(_ other: some RawSyntaxNodeProtocol) {
      if let node = RawYieldedExpressionsClauseSyntax(other) {
        self = .multiple(node)
        return
      }
      if let node = RawExprSyntax(other) {
        self = .single(node)
        return
      }
      return nil
    }
  }
  
  @_spi(RawSyntax)
  public var layoutView: RawSyntaxLayoutView {
    return raw.layoutView!
  }
  
  public static func isKindOf(_ raw: RawSyntax) -> Bool {
    return raw.kind == .yieldStmt
  }
  
  public var raw: RawSyntax
  
  init(raw: RawSyntax) {
    precondition(Self.isKindOf(raw))
    self.raw = raw
  }
  
  private init(unchecked raw: RawSyntax) {
    self.raw = raw
  }
  
  public init?(_ other: some RawSyntaxNodeProtocol) {
    guard Self.isKindOf(other.raw) else {
      return nil
    }
    self.init(unchecked: other.raw)
  }
  
  public init(
      _ unexpectedBeforeYieldKeyword: RawUnexpectedNodesSyntax? = nil, 
      yieldKeyword: RawTokenSyntax, 
      _ unexpectedBetweenYieldKeywordAndYieldedExpressions: RawUnexpectedNodesSyntax? = nil, 
      yieldedExpressions: YieldedExpressions, 
      _ unexpectedAfterYieldedExpressions: RawUnexpectedNodesSyntax? = nil, 
      arena: __shared SyntaxArena
    ) {
    let raw = RawSyntax.makeLayout(
      kind: .yieldStmt, uninitializedCount: 5, arena: arena) { layout in
      layout.initialize(repeating: nil)
      layout[0] = unexpectedBeforeYieldKeyword?.raw
      layout[1] = yieldKeyword.raw
      layout[2] = unexpectedBetweenYieldKeywordAndYieldedExpressions?.raw
      layout[3] = yieldedExpressions.raw
      layout[4] = unexpectedAfterYieldedExpressions?.raw
    }
    self.init(unchecked: raw)
  }
  
  public var unexpectedBeforeYieldKeyword: RawUnexpectedNodesSyntax? {
    layoutView.children[0].map(RawUnexpectedNodesSyntax.init(raw:))
  }
  
  public var yieldKeyword: RawTokenSyntax {
    layoutView.children[1].map(RawTokenSyntax.init(raw:))!
  }
  
  public var unexpectedBetweenYieldKeywordAndYieldedExpressions: RawUnexpectedNodesSyntax? {
    layoutView.children[2].map(RawUnexpectedNodesSyntax.init(raw:))
  }
  
  public var yieldedExpressions: RawSyntax {
    layoutView.children[3]!
  }
  
  public var unexpectedAfterYieldedExpressions: RawUnexpectedNodesSyntax? {
    layoutView.children[4].map(RawUnexpectedNodesSyntax.init(raw:))
  }
}

@_spi(RawSyntax)
public struct RawYieldedExpressionListSyntax: RawSyntaxNodeProtocol {
  @_spi(RawSyntax)
  public var layoutView: RawSyntaxLayoutView {
    return raw.layoutView!
  }
  
  public static func isKindOf(_ raw: RawSyntax) -> Bool {
    return raw.kind == .yieldedExpressionList
  }
  
  public var raw: RawSyntax
  
  init(raw: RawSyntax) {
    precondition(Self.isKindOf(raw))
    self.raw = raw
  }
  
  private init(unchecked raw: RawSyntax) {
    self.raw = raw
  }
  
  public init?(_ other: some RawSyntaxNodeProtocol) {
    guard Self.isKindOf(other.raw) else {
      return nil
    }
    self.init(unchecked: other.raw)
  }
  
  public init(elements: [RawYieldedExpressionSyntax], arena: __shared SyntaxArena) {
    let raw = RawSyntax.makeLayout(
      kind: .yieldedExpressionList, uninitializedCount: elements.count, arena: arena) { layout in
        guard var ptr = layout.baseAddress else {
          return
        }
        for elem in elements {
          ptr.initialize(to: elem.raw)
          ptr += 1
        }
    }
    self.init(unchecked: raw)
  }
  
  public var elements: [RawYieldedExpressionSyntax] {
    layoutView.children.map {
      RawYieldedExpressionSyntax(raw: $0!)
    }
  }
}

@_spi(RawSyntax)
public struct RawYieldedExpressionSyntax: RawSyntaxNodeProtocol {
  @_spi(RawSyntax)
  public var layoutView: RawSyntaxLayoutView {
    return raw.layoutView!
  }
  
  public static func isKindOf(_ raw: RawSyntax) -> Bool {
    return raw.kind == .yieldedExpression
  }
  
  public var raw: RawSyntax
  
  init(raw: RawSyntax) {
    precondition(Self.isKindOf(raw))
    self.raw = raw
  }
  
  private init(unchecked raw: RawSyntax) {
    self.raw = raw
  }
  
  public init?(_ other: some RawSyntaxNodeProtocol) {
    guard Self.isKindOf(other.raw) else {
      return nil
    }
    self.init(unchecked: other.raw)
  }
  
  public init(
      _ unexpectedBeforeExpression: RawUnexpectedNodesSyntax? = nil, 
      expression: RawExprSyntax, 
      _ unexpectedBetweenExpressionAndComma: RawUnexpectedNodesSyntax? = nil, 
      comma: RawTokenSyntax?, 
      _ unexpectedAfterComma: RawUnexpectedNodesSyntax? = nil, 
      arena: __shared SyntaxArena
    ) {
    let raw = RawSyntax.makeLayout(
      kind: .yieldedExpression, uninitializedCount: 5, arena: arena) { layout in
      layout.initialize(repeating: nil)
      layout[0] = unexpectedBeforeExpression?.raw
      layout[1] = expression.raw
      layout[2] = unexpectedBetweenExpressionAndComma?.raw
      layout[3] = comma?.raw
      layout[4] = unexpectedAfterComma?.raw
    }
    self.init(unchecked: raw)
  }
  
  public var unexpectedBeforeExpression: RawUnexpectedNodesSyntax? {
    layoutView.children[0].map(RawUnexpectedNodesSyntax.init(raw:))
  }
  
  public var expression: RawExprSyntax {
    layoutView.children[1].map(RawExprSyntax.init(raw:))!
  }
  
  public var unexpectedBetweenExpressionAndComma: RawUnexpectedNodesSyntax? {
    layoutView.children[2].map(RawUnexpectedNodesSyntax.init(raw:))
  }
  
  public var comma: RawTokenSyntax? {
    layoutView.children[3].map(RawTokenSyntax.init(raw:))
  }
  
  public var unexpectedAfterComma: RawUnexpectedNodesSyntax? {
    layoutView.children[4].map(RawUnexpectedNodesSyntax.init(raw:))
  }
}

@_spi(RawSyntax)
public struct RawYieldedExpressionsClauseSyntax: RawSyntaxNodeProtocol {
  @_spi(RawSyntax)
  public var layoutView: RawSyntaxLayoutView {
    return raw.layoutView!
  }
  
  public static func isKindOf(_ raw: RawSyntax) -> Bool {
    return raw.kind == .yieldedExpressionsClause
  }
  
  public var raw: RawSyntax
  
  init(raw: RawSyntax) {
    precondition(Self.isKindOf(raw))
    self.raw = raw
  }
  
  private init(unchecked raw: RawSyntax) {
    self.raw = raw
  }
  
  public init?(_ other: some RawSyntaxNodeProtocol) {
    guard Self.isKindOf(other.raw) else {
      return nil
    }
    self.init(unchecked: other.raw)
  }
  
  public init(
      _ unexpectedBeforeLeftParen: RawUnexpectedNodesSyntax? = nil, 
      leftParen: RawTokenSyntax, 
      _ unexpectedBetweenLeftParenAndElements: RawUnexpectedNodesSyntax? = nil, 
      elements: RawYieldedExpressionListSyntax, 
      _ unexpectedBetweenElementsAndRightParen: RawUnexpectedNodesSyntax? = nil, 
      rightParen: RawTokenSyntax, 
      _ unexpectedAfterRightParen: RawUnexpectedNodesSyntax? = nil, 
      arena: __shared SyntaxArena
    ) {
    let raw = RawSyntax.makeLayout(
      kind: .yieldedExpressionsClause, uninitializedCount: 7, arena: arena) { layout in
      layout.initialize(repeating: nil)
      layout[0] = unexpectedBeforeLeftParen?.raw
      layout[1] = leftParen.raw
      layout[2] = unexpectedBetweenLeftParenAndElements?.raw
      layout[3] = elements.raw
      layout[4] = unexpectedBetweenElementsAndRightParen?.raw
      layout[5] = rightParen.raw
      layout[6] = unexpectedAfterRightParen?.raw
    }
    self.init(unchecked: raw)
  }
  
  public var unexpectedBeforeLeftParen: RawUnexpectedNodesSyntax? {
    layoutView.children[0].map(RawUnexpectedNodesSyntax.init(raw:))
  }
  
  public var leftParen: RawTokenSyntax {
    layoutView.children[1].map(RawTokenSyntax.init(raw:))!
  }
  
  public var unexpectedBetweenLeftParenAndElements: RawUnexpectedNodesSyntax? {
    layoutView.children[2].map(RawUnexpectedNodesSyntax.init(raw:))
  }
  
  public var elements: RawYieldedExpressionListSyntax {
    layoutView.children[3].map(RawYieldedExpressionListSyntax.init(raw:))!
  }
  
  public var unexpectedBetweenElementsAndRightParen: RawUnexpectedNodesSyntax? {
    layoutView.children[4].map(RawUnexpectedNodesSyntax.init(raw:))
  }
  
  public var rightParen: RawTokenSyntax {
    layoutView.children[5].map(RawTokenSyntax.init(raw:))!
  }
  
  public var unexpectedAfterRightParen: RawUnexpectedNodesSyntax? {
    layoutView.children[6].map(RawUnexpectedNodesSyntax.init(raw:))
  }
}
