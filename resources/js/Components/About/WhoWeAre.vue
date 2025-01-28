<template>
    <section class="bg-white py-16">
        <div class="container mx-auto px-4">
            <div class="grid grid-cols-1 lg:grid-cols-2 gap-12">
            <!-- Left Column -->
            <div class="space-y-8">
                <h2 class="text-5xl font-gloria text-center">Who We Are</h2>
                
                <p class="text-xl font-verdana">
                We are a generation driven by the fear that we might not pass on to our children 
                the world they deserve. The biggest challenge of this century will undoubtedly 
                be climate change. While we may not yet know how to solve it, we believe education 
                can empower more people to take part in tackling humanity's greatest challenges.
                </p>
                
                <p class="text-xl font-verdana">
                By sharing the education we've been fortunate to receive in England with those 
                who lack access, we hope to create a better shot at addressing these global problems.
                </p>
            </div>
    
            <!-- Right Column with Decorative Elements -->
            <div class="relative">
                <img 
                src="/storage/flower1.png" 
                alt="Decorative flowers" 
                class="absolute -top-14 right-0 w-[372px] h-[418px] object-cover"
                />
                <img 
                src="/storage/flower2.png" 
                alt="Decorative flowers" 
                class="absolute top-0 left-0 w-[206px] h-[216px] object-cover"
                />
            </div>
            </div>
    
            <!-- Quote Section -->
            <div class="mt-24">
            <div class="bg-[#E7F8FF] rounded-[50px] p-12 max-w-2xl mx-auto relative">
                <img 
                src="/storage/quote-left.png" 
                alt="Quote mark" 
                class="absolute -top-8 -left-8 w-[175px] h-[149px] object-contain opacity-80"
                />
                <img 
                src="/storage/quote-right.png" 
                alt="Quote mark" 
                class="absolute -bottom-8 -right-8 w-[159px] h-[133px] object-contain opacity-80"
                />
                
                <blockquote class="text-3xl font-inter text-center">
                "Tough times create tough men. Tough men create easy times. 
                Easy times create weak people. Weak people create tough times."
                </blockquote>
            </div>
    
            <p class="mt-8 text-xl font-inter max-w-2xl mx-auto text-center">
                Tough times have certainly begun. But we do not yet consider ourselves strong. 
                Only by overcoming challenges together, by fighting for what the child in each 
                of us knows to be right, <strong>will we become truly resilient.</strong>
            </p>
            </div>
        </div>
    </section>
</template>
  
<script setup lang="ts">
</script>