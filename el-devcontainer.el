(require 'json)

;;;###autoload
(defun open-in-container ()
  "Opens the current project in a container for development"
  (interactive)
  (let* ((json-object-type 'hash-table)
       (json-array-type 'list)
       (json-key-type 'string)
       (devcontainer-json (json-read-file "~/test.json"))
       (dockerfile-path (gethash "dockerFile" devcontainer-json)))
  (message dockerfile-path)))

(provide 'el-devcontainer)
