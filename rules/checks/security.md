# Security Checklist

Apply this checklist whenever the task involves security-sensitive areas.

## 1. Secrets and credentials
- Ensure `.gitignore` exists and includes `.env` and credential files.
- Scan for hardcoded API keys, tokens, or passwords.
- Enforce environment variables or secret managers.

## 2. Frontend exposure
- Ensure frontend code does not expose secrets.
- Sensitive operations must go through a secure backend.
- Avoid exposing internal endpoints directly to the browser.

## 3. Input validation
- Validate all user input (type, format, size, boundaries).
- Validate request and response payloads using schemas.
- Highlight missing validation and suggest fixes (e.g., Zod, Yup).

## 4. Authentication and authorization
- Ensure sensitive routes require authentication.
- Enforce resource-level authorization (avoid IDOR).
- Apply the principle of least privilege.

## 5. Common attack protections
- SQL Injection: use parameterized queries or ORM.
- XSS: sanitize output, avoid unsafe HTML rendering.
- CSRF: apply tokens or proper cookie policies where applicable.
- Recommend security headers when relevant (CSP, HSTS).

## 6. Logging and observability
- Log critical events (auth attempts, failures, data changes).
- Never log secrets or sensitive personal data.
- Suggest log levels and correlation IDs if missing.

## 7. Password handling (if applicable)
- Enforce strong password policies.
- Store passwords using bcrypt or Argon2 with per-user salt.
- Ensure secure password reset mechanisms.

## 8. Backup and recovery (if applicable)
- Verify existence of backup and restore procedures.
- If not verifiable, suggest documentation and automation.

## 9. Dependencies
- Identify outdated or vulnerable dependencies.
- Suggest audit commands (npm audit, pnpm audit, yarn audit).
- Remove demo or test code from production builds.

## 10. Secure communication
- Enforce HTTPS and avoid mixed content.
- Verify redirects, certificates, and transport security.

