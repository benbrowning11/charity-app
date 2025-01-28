export interface VideoProps {
    videoUrl: string
    thumbnailUrl: string
    title?: string
    description?: string
  }
  
  export interface VideoState {
    isPlaying: boolean
    currentTime: number
    duration: number
    volume: number
    isMuted: boolean
  }