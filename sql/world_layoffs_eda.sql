USE world_layoffs;
SELECT * FROM layoffs_staging2;

-- 1. Total Layoffs Overall
SELECT SUM(total_laid_off) AS total_laid_off
FROM layoffs_staging2;

-- 2. Total Layoffs by company
SELECT company,
SUM(total_laid_off) AS total_laid_off
FROM layoffs_staging2
GROUP BY company
ORDER BY total_laid_off DESC;

-- 3. Top 10 companies by Layoffs
SELECT company,
SUM(total_laid_off) AS total_laid_off
FROM layoffs_staging2
GROUP BY company
ORDER BY total_laid_off DESC
LIMIT 10;


-- 4. Layoffs by Industry
SELECT industry,
SUM(total_laid_off) AS total_laid_off
FROM layoffs_staging2
GROUP BY industry
ORDER BY total_laid_off DESC;

-- 5. Layoffs by Country
SELECT country,
SUM(total_laid_off) AS total_laid_off
FROM layoffs_staging2
GROUP BY country
ORDER BY total_laid_off DESC;

-- 6. Layoffs by Year
SELECT YEAR(date) AS year,
SUM(total_laid_off) AS total_laid_off
FROM layoffs_staging2
GROUP BY YEAR(date)
ORDER BY year;

-- 7. Monthly Trend
SELECT DATE_FORMAT(date, '%Y-%m') AS month,
SUM(total_laid_off) AS total_laid_off
FROM layoffs_staging2
WHERE date IS NOT NULL
GROUP BY month
ORDER BY month;

-- 8. Rolling Total
WITH monthly_layoffs AS (
SELECT DATE_FORMAT(date, '%Y-%m') AS month,
SUM(total_laid_off) AS total_laid_off
FROM layoffs_staging2
GROUP BY month
)
SELECT month,
total_laid_off,
SUM(total_laid_off) OVER (ORDER BY month) AS rolling_total
FROM monthly_layoffs;


-- 9. Companies with 100% Layoffs
SELECT company,
percentage_laid_off
FROM layoffs_staging2
WHERE percentage_laid_off = 1
ORDER BY company;

-- 10. Top Funding vs Layoffs (Insight Query)
SELECT company,
funds_raised_millions,
SUM(total_laid_off) AS total_laid_off
FROM layoffs_staging2
GROUP BY company, funds_raised_millions
ORDER BY funds_raised_millions DESC;


SELECT *
FROM layoffs_staging2
WHERE date IS NULL;