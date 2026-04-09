def REPO_PUBLIC = 'https://maven.aliyun.com/repository/public'
def REPO_GOOGLE = 'https://maven.aliyun.com/repository/google'
def REPO_CENTRAL = 'https://maven.aliyun.com/repository/central'
def REPO_JCENTER = 'https://maven.aliyun.com/repository/jcenter'

def isTargetRepo = { String url ->
    if (url == null) return false
    return url.contains('repo1.maven.org') ||
           url.contains('repo.maven.apache.org') ||
           url.contains('maven.google.com') ||
           url.contains('dl.google.com') ||
           url.contains('jcenter.bintray.com')
}

def appendAliyunRepos = { repoHandler ->
    repoHandler.maven { url REPO_PUBLIC }
    repoHandler.maven { url REPO_GOOGLE }
    repoHandler.maven { url REPO_CENTRAL }
    repoHandler.maven { url REPO_JCENTER }
}

gradle.beforeProject { project ->

    [project.buildscript.repositories, project.repositories].each { repoHandler ->

        repoHandler.all { repo ->
            if (repo instanceof MavenArtifactRepository) {
                def oldUrl = repo.url?.toString()
                if (isTargetRepo(oldUrl)) {
                    if (oldUrl.contains('maven.google.com') || oldUrl.contains('dl.google.com')) {
                        repo.setUrl(REPO_GOOGLE)
                    } else if (oldUrl.contains('jcenter.bintray.com')) {
                        repo.setUrl(REPO_JCENTER)
                    } else {
                        repo.setUrl(REPO_PUBLIC)
                    }
                }
            }
        }

        appendAliyunRepos(repoHandler)
    }
}
