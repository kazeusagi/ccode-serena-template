import { expect, it } from 'bun:test';
import { add } from './add';

it('my first test', () => {
  expect(add(1, 2)).toBe(3);
});
