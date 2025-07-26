<script>
	import { onMount } from 'svelte';
	import { Button } from '$lib/components/ui/button';
	import { Card, CardContent, CardDescription, CardHeader, CardTitle } from '$lib/components/ui/card';
	import { Badge } from '$lib/components/ui/badge';
	import { Avatar, AvatarFallback, AvatarImage } from '$lib/components/ui/avatar';
	import { Zap, Palette, Database, Plus, Minus, Home, BarChart3, Settings } from '@lucide/svelte';
	
	let count = 0;
	
	onMount(() => {
		console.log('Nexus Frontend loaded with SvelteKit + TailwindCSS + shadcn/ui + Lucide icons');
	});
</script>

<svelte:head>
	<title>Nexus - Modern Web Application</title>
	<meta name="description" content="A modern web application built with SvelteKit and TailwindCSS" />
</svelte:head>

<div class="min-h-screen bg-gradient-to-br from-primary-50 to-primary-100">
	<!-- Header -->
	<header class="bg-white shadow-sm border-b border-gray-200">
		<div class="max-w-7xl mx-auto px-4 sm:px-6 lg:px-8">
			<div class="flex justify-between items-center py-6">
				<div class="flex items-center space-x-3">
					<h1 class="text-2xl font-bold text-primary-600">Nexus</h1>
					<Badge variant="outline">shadcn/ui</Badge>
				</div>
				<nav class="hidden md:flex items-center space-x-8">
					<a href="/dashboard" class="text-gray-600 hover:text-primary-600 transition-colors flex items-center space-x-2">
						<Home class="w-4 h-4" />
						<span>Dashboard</span>
					</a>
					<a href="/analytics" class="text-gray-600 hover:text-primary-600 transition-colors flex items-center space-x-2">
						<BarChart3 class="w-4 h-4" />
						<span>Analytics</span>
					</a>
					<a href="/settings" class="text-gray-600 hover:text-primary-600 transition-colors flex items-center space-x-2">
						<Settings class="w-4 h-4" />
						<span>Settings</span>
					</a>
					<Avatar>
						<AvatarImage src="https://github.com/shadcn.png" alt="User" />
						<AvatarFallback>U</AvatarFallback>
					</Avatar>
				</nav>
			</div>
		</div>
	</header>

	<!-- Main Content -->
	<main class="max-w-7xl mx-auto px-4 sm:px-6 lg:px-8 py-12">
		<!-- Hero Section -->
		<div class="text-center mb-16">
			<h2 class="text-4xl font-bold text-gray-900 mb-4">
				Welcome to Nexus
			</h2>
			<p class="text-xl text-gray-600 mb-8 max-w-3xl mx-auto">
				A modern web application built with SvelteKit, TailwindCSS, and PostgreSQL. 
				Experience the power of modern web development.
			</p>
			<div class="flex justify-center space-x-4">
				<Button variant="default" size="lg">
					Get Started
				</Button>
				<Button variant="outline" size="lg">
					Learn More
				</Button>
			</div>
		</div>

		<!-- Features Grid -->
		<div class="grid md:grid-cols-3 gap-8 mb-16">
			<Card>
				<CardHeader>
					<div class="w-12 h-12 bg-primary/10 rounded-lg flex items-center justify-center mb-4">
						<Zap class="w-6 h-6 text-primary" />
					</div>
					<CardTitle>Lightning Fast</CardTitle>
					<CardDescription>Built with SvelteKit for optimal performance and user experience.</CardDescription>
				</CardHeader>
			</Card>

			<Card>
				<CardHeader>
					<div class="w-12 h-12 bg-primary/10 rounded-lg flex items-center justify-center mb-4">
						<Palette class="w-6 h-6 text-primary" />
					</div>
					<CardTitle>Modern Design</CardTitle>
					<CardDescription>Beautiful UI components styled with shadcn/ui and TailwindCSS.</CardDescription>
				</CardHeader>
			</Card>

			<Card>
				<CardHeader>
					<div class="w-12 h-12 bg-primary/10 rounded-lg flex items-center justify-center mb-4">
						<Database class="w-6 h-6 text-primary" />
					</div>
					<CardTitle>Robust Backend</CardTitle>
					<CardDescription>Powered by PostgreSQL and GraphQL for scalable data management.</CardDescription>
				</CardHeader>
			</Card>
		</div>

		<!-- Interactive Counter -->
		<Card class="text-center">
			<CardHeader>
				<CardTitle>Interactive Counter</CardTitle>
				<CardDescription>Click the buttons to interact with SvelteKit reactivity!</CardDescription>
			</CardHeader>
			<CardContent>
				<div class="flex items-center justify-center space-x-4 mb-4">
					<button 
						class="w-10 h-10 bg-secondary text-secondary-foreground hover:bg-secondary/80 rounded-lg transition-colors flex items-center justify-center"
						on:click={() => count--}
					>
						<Minus class="w-4 h-4" />
					</button>
					<Badge variant="secondary" class="text-2xl font-bold min-w-[3rem]">
						{count}
					</Badge>
					<button 
						class="w-10 h-10 bg-secondary text-secondary-foreground hover:bg-secondary/80 rounded-lg transition-colors flex items-center justify-center"
						on:click={() => count++}
					>
						<Plus class="w-4 h-4" />
					</button>
				</div>
			</CardContent>
		</Card>
	</main>

	<!-- Footer -->
	<footer class="bg-white border-t border-gray-200 mt-16">
		<div class="max-w-7xl mx-auto px-4 sm:px-6 lg:px-8 py-8">
			<div class="text-center text-gray-600">
				<p>&copy; 2024 Nexus. Built with SvelteKit + TailwindCSS + shadcn/ui + PostgreSQL.</p>
			</div>
		</div>
	</footer>
</div> 