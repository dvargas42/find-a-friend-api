export class InvalidEnvironmentVariablesError extends Error {
  constructor() {
    super('Invalid environment variables.')
  }
}
