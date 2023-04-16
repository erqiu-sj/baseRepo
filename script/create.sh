###
# @Author: 邱狮杰
# @Date: 2023-04-16 09:03:29
 # @LastEditTime: 2023-04-16 09:50:36
# @Description:
 # @FilePath: /baseRepo/script/create.sh
###

mkdir etc

mkdir src

touch src/index.ts

pnpm init

tsc --init

npm pkg set scripts.build:cjs='tsc --module commonjs --rootDir ./src --outDir ./lib --experimentalDecorators true'

npm pkg set scripts.build:es='tsc --module es6 --rootDir ./src --outDir ./dist --experimentalDecorators true'

npm pbk set scripts.build="pnpm build:cjs && pnpm build:es"

npm pkg set scripts.build:md="pnpm build && api-extractor run --local --verbose && sh mv.sh"
