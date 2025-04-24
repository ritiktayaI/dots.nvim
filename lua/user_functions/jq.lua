local M = {}

function M.parse_json_with_jq()
    local json_data = vim.api.nvim_get_current_buf()
    -- Get the current buffer content

    local jq_query = "'path(..) | select(.[-1] | . == \"year\") | join(\".\")'"
    -- Call jq to parse the JSON using jq_query
    local handle = io.popen("echo '" .. json_data .. "' | jq -c " .. jq_query)
    local result = handle:read("*a")
    handle:close()

    -- Display the parsed JSON result
    print(result)
end

-- Create a command to run the function
vim.api.nvim_create_user_command('ParseJson', M.parse_json_with_jq, {})

return M
