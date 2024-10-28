import { test, expect } from '@playwright/test';

test('Verify page header', async ({ page }) => {
  await page.goto('https://playwright.dev');

  await expect(page).toHaveTitle(/Playwright/);
});

test('Verificar que el botón de "Get Started" está visible', async ({ page }) => {
  await page.goto('https://playwright.dev');

  const getStartedButton = page.locator('text=Get Started');
  await expect(getStartedButton).toBeVisible();
});