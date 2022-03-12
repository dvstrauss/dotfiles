stow_dirs=(
	kitty
	zsh
	git
)
echo "🚮 Unstow dirs"
for stow_dir in ${stow_dirs[@]}
do 
	stow -D $stow_dir
done
echo "🚀 Stow dirs"
for stow_dir in ${stow_dirs[@]}
do 
	stow $stow_dir
done

