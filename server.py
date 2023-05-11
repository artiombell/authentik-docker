from http.server import BaseHTTPRequestHandler, HTTPServer


class SimpleHTTPRequestHandler(BaseHTTPRequestHandler):
    def do_GET(self):
        self.send_response(200)
        self.send_header('Content-type', 'text/html')
        self.end_headers()
        self.wfile.write(b'Server working.')

        
def run_server():
    server_address = ('', 25000)  # Use any available port you prefer
    httpd = HTTPServer(server_address, SimpleHTTPRequestHandler)
    print('Server running on port 25000...')
    httpd.serve_forever()


run_server()