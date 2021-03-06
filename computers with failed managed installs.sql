SELECT MI_ATTEMPT.ATTEMPT_COUNT, MACHINE.NAME as "Computer", SOFTWARE.DISPLAY_NAME as "Software"
FROM ORG1.MI_ATTEMPT
JOIN MACHINE on MACHINE.ID = MI_ATTEMPT.MACHINE_ID
JOIN MI on MI.ID = MI_ATTEMPT.MI_ID
JOIN SOFTWARE on SOFTWARE.ID = MI.SOFTWARE_ID
WHERE MI.MAX_ATTEMPT_COUNT = MI_ATTEMPT.ATTEMPT_COUNT