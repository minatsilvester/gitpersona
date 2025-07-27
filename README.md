# gitpersona

🧑‍💻 A simple CLI tool to manage and switch between multiple Git profiles with ease.

---

## ✨ Features

- 🔧 Add and configure multiple Git profiles (name & email)
- 🔁 Switch between profiles instantly
- 📜 List all saved profiles and view the active one
- 🚨 Warns you on terminal startup which profile is active
- 🧼 Keeps your global Git configuration clean

---

## 📦 Installation

Clone the repository and run the installer script:

```bash
git clone https://github.com/yourusername/gitpersona.git
cd gitpersona
./install.sh
```

## Usage

Add a new git identity
```
gitpersona add
```

Switch to a identity from the list
```
gitpersona switch
```

List all identities
```
gitpersona list
```

## Examples
```
$ gitpersona add

Profile name: work
Git name: Minat Silvester
Git email: minat.silvester@mx.com
```

```
$ gitpersona switch work

✅ Switched to profile: work
```

```
$ gitpersona list

✔️  work
   personal

```