rm -rf ./streamlit
mkdir -p ~/.streamlit
echo """# Below are all the sections and options you can have in ~/.streamlit/config.toml.

[global]

# By default, Streamlit checks if the Python watchdog module is available and, if not, prints a warning asking for you to install it. The watchdog module is not required, but highly recommended. It improves Streamlit's ability to detect changes to files in your filesystem.
# If you'd like to turn off this warning, set this to True.
# Default: false
disableWatchdogWarning = false

# If True, will show a warning when you run a Streamlit-enabled script via "python my_script.py".
# Default: true
showWarningOnDirectExecution = true


[logger]

# Level of logging: 'error', 'warning', 'info', or 'debug'.
# Default: 'info'
level = "info"

# String format for logging messages. If logger.datetimeFormat is set, logger messages will default to `%(asctime)s.%(msecs)03d %(message)s`. See [Python's documentation](https://docs.python.org/2.6/library/logging.html#formatter-objects) for available attributes.
# Default: None
messageFormat = "%(asctime)s %(message)s"


[client]

# Whether to enable st.cache.
# Default: true
caching = true

# If false, makes your Streamlit script not draw to a Streamlit app.
# Default: true
displayEnabled = true

# Controls whether uncaught app exceptions are displayed in the browser. By default, this is set to True and Streamlit displays app exceptions and associated tracebacks in the browser.
# If set to False, an exception will result in a generic message being shown in the browser, and exceptions and tracebacks will be printed to the console only.
# Default: true
å = true


[runner]

# Allows you to type a variable or string by itself in a single line of Python code to write it to the app.
# Default: true
magicEnabled = true

# Install a Python tracer to allow you to stop or pause your script at any point and introspect it. As a side-effect, this slows down your script's execution.
# Default: false
installTracer = false

# Sets the MPLBACKEND environment variable to Agg inside Streamlit to prevent Python crashing.
# Default: true
fixMatplotlib = true


[server]

# List of folders that should not be watched for changes. This impacts both "Run on Save" and @st.cache.
# Relative paths will be taken as relative to the current working directory.
# Example: ['/home/user1/env', 'relative/path/to/folder']
# Default: []
folderWatchBlacklist = []

# Change the type of file watcher used by Streamlit, or turn it off completely.
# Allowed values: * "auto" : Streamlit will attempt to use the watchdog module, and falls back to polling if watchdog is not available. * "watchdog" : Force Streamlit to use the watchdog module. * "poll" : Force Streamlit to always use polling. * "none" : Streamlit will not watch files.
# Default: "auto"
fileWatcherType = "auto"

# Symmetric key used to produce signed cookies. If deploying on multiple replicas, this should be set to the same value across all replicas to ensure they all share the same secret.
# Default: randomly generated secret key.
cookieSecret = "c972facefe4815501aa733670c7fad0ddfb93cf21213366d4ebacd921ee19e71"

# If false, will attempt to open a browser window on start.
# Default: false unless (1) we are on a Linux box where DISPLAY is unset, or (2) server.liveSave is set.
headless = false

# Automatically rerun script when the file is modified on disk.
# Default: false
runOnSave = false

# The address where the server will listen for client and browser connections. Use this if you want to bind the server to a specific address. If set, the server will only be accessible from this address, and not from any aliases (like localhost).
# Default: (unset)
#address =

# The port where the server will listen for browser connections.
# Default: 8501
port = 8501

# The base path for the URL where Streamlit should be served from.
# Default: ""
baseUrlPath = ""

# Enables support for Cross-Origin Request Sharing (CORS) protection, for added security.
# Due to conflicts between CORS and XSRF, if `server.enableXsrfProtection` is on and `server.enableCORS` is off at the same time, we will prioritize `server.enableXsrfProtection`.
# Default: true
enableCORS = true

# Enables support for Cross-Site Request Forgery (XSRF) protection, for added security.
# Due to conflicts between CORS and XSRF, if `server.enableXsrfProtection` is on and `server.enableCORS` is off at the same time, we will prioritize `server.enableXsrfProtection`.
# Default: true
enableXsrfProtection = true

# Max size, in megabytes, for files uploaded with the file_uploader.
# Default: 200
maxUploadSize = 200

# Enables support for websocket compression.
# Default: true
enableWebsocketCompression = true


[browser]

# Internet address where users should point their browsers in order to connect to the app. Can be IP address or DNS name and path.
# This is used to: - Set the correct URL for CORS and XSRF protection purposes. - Show the URL on the terminal - Open the browser - Tell the browser where to connect to the server when in liveSave mode.
# Default: 'localhost'
serverAddress = "localhost"

# Whether to send usage statistics to Streamlit.
# Default: true
gatherUsageStats = true

# Port where users should point their browsers in order to connect to the app.
# This is used to: - Set the correct URL for CORS and XSRF protection purposes. - Show the URL on the terminal - Open the browser - Tell the browser where to connect to the server when in liveSave mode.
# Default: whatever value is set in server.port.
serverPort = 8501


[mapbox]

# Configure Streamlit to use a custom Mapbox token for elements like st.pydeck_chart and st.map. To get a token for yourself, create an account at https://mapbox.com. It's free (for moderate usage levels)!
# Default: ""
token = ""


[deprecation]

# Set to false to disable the deprecation warning for the file uploader encoding.
# Default: "True"
showfileUploaderEncoding = "True"

# Set to false to disable the deprecation warning for the image format parameter.
# Default: "True"
#
# DEPRECATED.
# The format parameter for st.image has been removed.
# This option will be removed on or after 2021-03-24.
#
showImageFormat = "True"

# Set to false to disable the deprecation warning for using the global pyplot instance.
# Default: "True"
showPyplotGlobalUse = "True"


[s3]

# Name of the AWS S3 bucket to save apps.
# Default: (unset)
#bucket =

# URL root for external view of Streamlit apps.
# Default: (unset)
#url =

# Access key to write to the S3 bucket.
# Leave unset if you want to use an AWS profile.
# Default: (unset)
#accessKeyId =

# Secret access key to write to the S3 bucket.
# Leave unset if you want to use an AWS profile.
# Default: (unset)
#secretAccessKey =

# The "subdirectory" within the S3 bucket where to save apps.
# S3 calls paths "keys" which is why the keyPrefix is like a subdirectory. Use "" to mean the root directory.
# Default: ""
keyPrefix = ""

# AWS region where the bucket is located, e.g. "us-west-2".
# Default: (unset)
#region =

# AWS credentials profile to use.
# Leave unset to use your default profile.
# Default: (unset)
#profile =

[theme]
primaryColor="#10543d"
backgroundColor="#FFFFFF"
secondaryBackgroundColor="#f0f2f6"
textColor="#000000"
font="sans serif"

""" > ~/.streamlit/config.toml