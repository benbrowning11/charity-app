declare module '*.vue' {
    import type { DefineComponent } from 'vue'
    const component: DefineComponent<{}, {}, any>
    export default component
}

//import.meta.glob
declare module 'virtual:*' {
    const result: any
    export default result
}