#!/bin/bash

cd $GITHUB_WORKSPACE
echo "Running `npm install`..."
npm install

mkdir /storybook-output

echo "Running `npm run build-storybook -- -o /storybook-output`..."
npm run build-storybook -- -o /storybook-output

echo "Generating screenshots from /storybook-output"
node /pagediff/dist/index.js /storybook-output