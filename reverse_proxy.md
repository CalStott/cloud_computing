# Reverse Proxy notes

## What is a reverse proxy? 
A server that sits between client devices, such as web browsers, and a web server.

## Why implement one?
- __Security__
  - Hides the identity and structure of backend servers making it harder for attackers to directly access the backend server e.g. protects against distributed denial-of-service (DDoS) attacks
- __Scalability and Flexibility__
  - Clients only see the reverse proxy's IP address so the configuration of the backend infrastructure can be changed
  - Helps in a load-balanced environment for scaling the number of servers up and down to match fluctuations in traffic volume
- __Performance__
  - Reduce the time taken to generate a response and return it to the client through techniques e.g. caching, SSL termination
  - Provides load balancing by distributing client requests across multiple servers to ensure no single server is overwhelmed

## How are they different to a forward proxy?
A forward proxy, or just proxy, acts on behalf of the client whereas a reverse proxy acts on behalf of the server. A reverse proxy sits in front of an origin server and ensures than no client ever communicates directly with that server. A forward proxy sits in front of a client and ensures that no origin server ever communicates directly with that specific client.

## How do they work?
![reverse proxy](./images/reverse_proxy_flow.png)
*[Reference](https://www.cloudflare.com/en-gb/learning/cdn/glossary/reverse-proxy/)*

Typically, all requests from the user's device would go directly to the origin server (D -> F) and responses would come back directly (F -> D). With a reverse proxy, the requests will go to the reverse proxy (D -> E) and then onto the origin server (E -> F). The reverse proxy acts as a middleman between the client and server which handles requests and responses.

### Compared to Forward Proxy  
![forward proxy](./images/forward_proxy_flow.png)