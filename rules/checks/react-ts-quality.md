# React + TypeScript Quality Checklist

Apply this checklist for frontend and UI-related tasks.

## 1. DRY (Don't Repeat Yourself)
- Identify duplicated logic or components.
- Extract reusable components, hooks, or utilities.

## 2. Dead code
- Remove unused imports, functions, components, and state.
- Eliminate commented-out code and console.logs in production.

## 3. TypeScript correctness
- Avoid `any`; prefer `unknown`, unions, generics, or utility types.
- Explicitly type props, function returns, and custom hooks.
- Keep consistent usage of `type` vs `interface`.

## 4. Component structure
- Avoid oversized components (>250 lines).
- Reduce deeply nested JSX.
- Enforce single responsibility.

## 5. State management
- Avoid excessive prop drilling.
- Eliminate duplicated state.
- Use Context only when data is truly global.

## 6. Hooks best practices
- Never call hooks conditionally or inside loops.
- Fix missing or excessive dependencies in hooks.
- Extract complex logic into custom hooks.
- Prefer useReducer when state transitions are complex.

## 7. Logic vs presentation
- Avoid business logic and API calls inside presentational components.
- Encourage container/presentational separation when appropriate.

## 8. Error handling
- Ensure async calls have proper error handling.
- Provide user feedback for failures.
- Recommend Error Boundaries for UI crashes.

## 9. Performance
- Use React.memo, useCallback, and useMemo when justified.
- Virtualize large lists.
- Optimize images and static assets.

## 10. Project organization
- Maintain a consistent folder structure.
- Avoid circular dependencies.
- Split overly large files.

## 11. Accessibility (a11y)
- Provide labels for interactive elements.
- Ensure keyboard navigation and focus management.
- Validate semantic HTML and contrast.

## 12. Testing
- Prioritize tests for critical flows.
- Avoid brittle snapshot-only tests.
- Balance unit, integration, and e2e tests.

