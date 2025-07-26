# Nexus Frontend

A modern web application built with SvelteKit, TailwindCSS, and PostCSS.

## Tech Stack

- **Framework:** SvelteKit (latest)
- **Styling:** TailwindCSS + PostCSS
- **Language:** TypeScript
- **Font:** Inter (Google Fonts)
- **Icons:** Heroicons (SVG)

## Features

- ⚡ **Lightning Fast** - SvelteKit for optimal performance
- 🎨 **Modern Design** - TailwindCSS for beautiful UI components
- 📱 **Responsive** - Mobile-first design approach
- 🔧 **Type Safe** - Full TypeScript support
- 🎯 **Interactive** - SvelteKit reactivity and components

## Project Structure

```
frontend/
├── src/
│   ├── app.css          # Global styles with TailwindCSS
│   ├── app.html         # HTML template
│   ├── lib/             # Shared components and utilities
│   └── routes/          # SvelteKit routes
│       ├── +layout.svelte  # Root layout
│       └── +page.svelte    # Home page
├── tailwind.config.js   # TailwindCSS configuration
├── postcss.config.js    # PostCSS configuration
├── svelte.config.js     # SvelteKit configuration
├── vite.config.js       # Vite configuration
└── tsconfig.json        # TypeScript configuration
```

## Getting Started

1. **Install dependencies:**
   ```bash
   npm install
   ```

2. **Start development server:**
   ```bash
   npm run dev
   ```

3. **Build for production:**
   ```bash
   npm run build
   ```

4. **Preview production build:**
   ```bash
   npm run preview
   ```

## Development

- **Development server:** http://localhost:5173
- **Hot reload:** Enabled by default
- **Type checking:** `npm run check`
- **Watch mode:** `npm run check:watch`

## TailwindCSS Features

- **Custom colors:** Primary color palette
- **Custom components:** Button and card components
- **Typography:** Inter font family
- **Forms:** Enhanced form styling
- **Responsive:** Mobile-first breakpoints

## Custom Components

### Buttons
```html
<button class="btn-primary">Primary Button</button>
<button class="btn-secondary">Secondary Button</button>
```

### Cards
```html
<div class="card">
  <h3>Card Title</h3>
  <p>Card content goes here</p>
</div>
```

## Backend Integration

This frontend is designed to work with the Nexus backend:
- **API:** GraphQL endpoint at `/graphql`
- **Database:** PostgreSQL
- **Authentication:** Ready for integration

## Browser Support

- Chrome (latest)
- Firefox (latest)
- Safari (latest)
- Edge (latest)

## License

MIT License 