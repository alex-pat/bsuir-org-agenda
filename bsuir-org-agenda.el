;;; bsuir-org-agenda.el --- BSUIR schedule in agenda

;; Copyright (C) 2017 Alexander Pateenok <pateenoc@gmail.com>

;;; Commentary:

;; Not ended yet.

;; (bsuir-shedule "450501")

;; M-x bsuir-schedule-update

;; TODO ???

;;; Code:

(defun url-retrive-as-xml (url)
    "Retrieve URL and return parsed xml DOM."
    (let ((url-buffer (url-retrieve-synchronously url))
          (buffer-file-coding-system 'utf-8)
          url-content)
        (with-current-buffer url-buffer
            (search-forward "<")
            (backward-char)
            (setq url-content (libxml-parse-xml-region (point) (point-max))))
        (kill-buffer url-buffer)
        url-content))

(provide 'bsuir-org-agenda)

;;; bsuir-org-agenda.el ends here
