import { InvalidEnvironmentVariablesError } from '@/error/invalid-environment-variables-error'
import 'dotenv/config'
import { z } from 'zod'

const envSchema = z.object({
  NODE_ENV: z.enum(['production', 'dev', 'test']).default('production'),
  PORT: z.coerce.number().default(3333),
})

const _env = envSchema.safeParse(process.env)

if (!_env.success) {
  console.error('⚠️ Invalid environment variables', _env.error.format())
  throw new InvalidEnvironmentVariablesError()
}

export const env = _env.data
