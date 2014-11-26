(setq auto-mode-alist
      (append '(("SConstruct\\'" . python-mode)
		("SConscript\\'" . python-mode))
              auto-mode-alist))

(require-package 'pip-requirements)
(require-package 'virtualenvwrapper)
(require-package 'py-isort)
(require-package 'py-autopep8)

;;; virtualenvwrapper
(require 'virtualenvwrapper)
(venv-initialize-interactive-shells)
(venv-initialize-eshell)


(provide 'init-python-mode)
