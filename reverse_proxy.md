# Reverse Proxy Notes

## What is a Reverse Proxy?

A **reverse proxy** is a server that sits between client devices (e.g., web browsers) and a web server. It acts as an intermediary, handling requests from clients and forwarding them to the appropriate backend server.

---

## Why Implement a Reverse Proxy?

### 1. **Security**
   - **Protection of Backend Servers:** A reverse proxy hides the identity and structure of backend servers, making it harder for attackers to directly access them.
   - **DDoS Mitigation:** It can protect against Distributed Denial of Service (DDoS) attacks by filtering malicious traffic before it reaches the backend servers.

### 2. **Scalability and Flexibility**
   - **Hide Backend Infrastructure:** Clients only see the reverse proxy's IP address, allowing changes to be made to the backend infrastructure without exposing it to the client.
   - **Load Balancing:** In environments with fluctuating traffic, the reverse proxy can distribute client requests across multiple backend servers, helping to scale server capacity up or down.

### 3. **Performance**
   - **Response Time Optimization:** It reduces the time taken to generate a response and return it to the client through techniques like caching and SSL termination.
   - **Load Balancing:** A reverse proxy can distribute client requests across multiple servers, ensuring no single server is overwhelmed by traffic.

---

## How is a Reverse Proxy Different from a Forward Proxy?

- **Reverse Proxy:** Acts on behalf of the server. It sits in front of the origin server, ensuring that no client directly communicates with it.
- **Forward Proxy:** Acts on behalf of the client. It sits in front of the client, ensuring that no origin server directly communicates with that client.

---

## How Do Reverse Proxies Work?

In a typical setup, all requests from the user's device (D) go directly to the origin server (F), and responses come back directly (F -> D). With a reverse proxy, however, the requests go to the reverse proxy (D -> E) first, and then the reverse proxy forwards them to the origin server (E -> F). The reverse proxy acts as a middleman between the client and the server, handling requests and responses.

### Reverse Proxy Flow:
![Reverse Proxy](./images/reverse_proxy_flow.png)  
*[Reference](https://www.cloudflare.com/en-gb/learning/cdn/glossary/reverse-proxy/)*

---

## Compared to Forward Proxy

In contrast, with a forward proxy, the flow is different. The client’s requests go through the forward proxy (A -> B), which then forwards the request to the origin server (B -> C). The responses flow back through the proxy (C -> B -> A).

### Forward Proxy Flow:
![Forward Proxy](./images/forward_proxy_flow.png)
