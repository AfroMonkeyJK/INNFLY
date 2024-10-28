import { test, expect } from '@playwright/test';

test('the user is in the main page', async ({ page }) => {
    await page.goto('https://highlifeshop.com/cafe');

    await expect(page).toHaveTitle(/British Airways/);
    const productList = page.locator('#layer-product-list');
    await expect(productList).toBeVisible();

});

test('the "sort by" field is shown', async ({ page }) => {
    await page.goto('https://highlifeshop.com/cafe');
  
    const productDropdown = page.locator('.sorter');
    await expect(productDropdown).toBeVisible();
});

test('the position is set as by "Default"', async ({ page }) => {
    await page.goto('https://highlifeshop.com/cafe');
  
    const productDropdown = page.locator('.sorter .init');
    await expect(productDropdown).toBeVisible();
    await expect(productDropdown).toContainText('Default');
});

test('the arrow icon is shown in "down" direction', async ({ page }) => {
    await page.goto('https://highlifeshop.com/cafe');
  
    const productDropdown = page.locator('.sorter .icon-down');
    await expect(productDropdown).toBeVisible();
});