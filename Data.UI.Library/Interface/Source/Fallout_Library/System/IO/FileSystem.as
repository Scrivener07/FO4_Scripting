package System.IO
{
	import F4SE.Extensions;

	public class FileSystem
	{
		/**
		 *
		 * @param f4se - The F4SE code object.
		 * @param path -
		 * @param match -
		 * @param recursive -
		 * @return Vector.<FileSystemInfo> - ???
		 */
		public static function GetListing(f4se:*, path:String, match:String, recursive:Boolean=false):Vector.<FileSystemInfo>
		{
			if (f4se != null)
			{
				var array:Array = F4SE.Extensions.GetDirectoryListing(f4se, path, match, recursive);
				if (array != null)
				{
					if(array.length > 0)
					{
						var files:Vector.<FileSystemInfo> = new Vector.<FileSystemInfo>();
						for each(var element:* in array)
						{
							var variable = FileSystemInfo.FromObject(element);



							files.push(FileSystemInfo.FromObject(element));
						}
						return files;
					}
					else
					{
						Debug.WriteLine("[System.IO]", "FileSystem", "GetListing", "No files or folders were found.", "path:'"+path+"'", "match:'"+match+"'", "recursive:'"+recursive+"'");
						return null;
					}
				}
				else
				{
					Debug.WriteLine("[System.IO]", "FileSystem", "GetListing", "The array cannot be null.");
					return null;
				}
			}
			else
			{
				Debug.WriteLine("[System.IO]", "FileSystem", "GetListing", "The f4se object cannot be null.");
				return null;
			}
		}


	}
}