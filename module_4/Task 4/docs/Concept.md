## Intro
This page describe few tool for local k8s cluster: minikube, kind, k3d

## Characteristic

| Item          | minikube                  |  kind                 | k3d                   |
| --------      | -------                   | --------              | ---                   |
| os            | linux, macos, windows     | linux, macos, windows | linux, macos, windows |
| arch          | x86-64, arm64             | x86-64, arm64         | x86-64, arm64         |
| engine        | VM, docker, podman, etc   | docker, podman        |   docker              |
| cluster setup | single/multi(custom) node | single/multi node     | single/multi node     |


## Pros/Cons
<table>
    <tr>
        <th></th>
        <th>minikube</th>
        <th>kind</th>
        <th>k3d</th>
    </tr>
    <tr>
        <th>Pros</th>
        <td>
            <ul>
                <li>Easy to setup</li>
                <li>Use different env(VM, docker)</li>
                <li>Integrated Dashboard</li>
                <li>MultiOS Support</li>
                <li>Many Configuration Options</li>
                <li>MultiNode Setup</li>
                <li>Support Plugins<li>
                <li>Good documentation</li>
            </ul>
        </td>
        <td>
            <ul>
                <li>Easy to use</li>
                <li>Simple setup for local development</li>
            </ul>
        </td>
        <td>
            <ul>
                <li>Easy to use</li>
                <li>Lightweight</li>
                <li>Has many configuration options</li>
                <li>Can be used for small compiters like RPI</li>
            </ul>
        </td>
    </tr>
    <tr>
        <th>Cons</th>
        <td>
            <ul>
                <li>Perfomance contrains</li>
            </ul>
        </td>
        <td>
            <ul>
                <li>Lack of documentation</li>
                <li>Use only docker</li>
                <li>Does not have plugins like dashboard</li>
            </ul>
        </td>
        <td>
            <ul>
                <li>Lack of documentation</li>
                <li>Does not have plugins like dashboard from the beggining</li>
                <li>Configuration might be not simple</li>
            </ul>
        </td>
    </tr>
</table>


## Conclusion
Since `minikube` is vert matchure and has a lot of features, for local development and lightweight setup i would recomend to take `k3d` since it is k8s version for embedded devices which making it suiteble for low resources.

## Minikube Live Demo
![MinikubeDemo](minikube-demo.gif)


## Kind Live Demo
![KindDemo](kind-demo.gif)

## K3D Live Demo
![K3DDemo](k3d-demo.gif)


